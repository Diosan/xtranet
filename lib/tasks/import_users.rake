require 'csv'
namespace :monster do
  task :import_users => :environment do
     puts "Current env is #{ENV['RAKE_ENV']}"
     ActionMailer::Base.perform_deliveries = true
     ActionMailer::Base.raise_delivery_errors = true
     puts "Perform Deliveries = " + ActionMailer::Base.perform_deliveries.to_s
     puts "Raise Delivery Errors = " + ActionMailer::Base.raise_delivery_errors.to_s
     puts " "
     puts " "

     CSV.foreach("db/import/angostura_admin_users.csv", headers: true) do |row|
     
       password_length = 8
       password = Devise.friendly_token.first(password_length)
       
       user = User.new(:email => row["email"], :password => password, :password_confirmation => password)

       user.first_name = row["name"].to_s.split(' ')[0]
       user.last_name = row["name"].to_s.split(' ')[1]
     
       if row["name"].to_s.split(' ')[2].to_s != ''
          user.last_name += (' ' + row["name"].to_s.split(' ')[2])
       end
       
       puts (row["name"].to_s.split(' ').count >= 2 ? (user.first_name + ' ' + user.last_name) : user.first_name) 
                 
       if row["role"].include? "Admin"
          user.spree_roles << Spree::Role.find(1)
       end
       
       user.spree_roles << Spree::Role.find(2)
       
       Spree::Taxonomy.all.each do |taxonomy|
          user.product_ranges << taxonomy
       end
            
       user.save
       
       UserMailer.registration_confirmation(user, password).deliver
       
       puts "Email sent to " + row["email"]
       puts "The password is :" + password
       puts " "
 
     end
     
  end
end
