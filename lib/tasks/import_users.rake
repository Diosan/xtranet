require 'csv'
namespace :monster do
  task :import_users => :environment do
     CSV.foreach("db/import/angostura_users.csv", headers: true) do |row|
       user = User.new({ :email => row["email"], :password => 'password', :password_confirmation => 'password'})
       user.first_name = row["name"].to_s.split(' ')[0]
       user.last_name = row["name"].to_s.split(' ')[1]
     
       if row["name"].to_s.split(' ')[2].to_s != ''
        user.last_name += (' ' + row["name"].to_s.split(' ')[2])
       end
       puts (row["name"].to_s.split(' ').count >= 2 ? (user.first_name + ' ' + user.last_name) : user.first_name) 
       user.pass_change = true   
       #puts row["name"]
       #user.save   
     end
     
  end
end
