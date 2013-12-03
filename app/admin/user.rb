ActiveAdmin.register User do

        form do |f|
           f.inputs :email, :password
           f.inputs :name => "Address", :for => [:address, f.object.address || ::Spree::Address.new]
        end
        
end
