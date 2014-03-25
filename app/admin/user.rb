ActiveAdmin.register User do

        form do |f|
           f.inputs :email, :password
           f.inputs "Address", :for => [:address, f.object.address || ::Spree::Address.new] do |address|
                 address.input :first_name
                 address.input :last_name
                 address.input :country, :collection => Spree::Country.all.order("name")
                 address.input :state
                 address.input :city
                 address.input :address1
                 address.input :address2
                 address.input :zipcode
                 address.input :phone
                 address.input :alternative_phone
                 address.input :company
           end
           f.inputs "Product Ranges" do
              f.input :product_ranges, :as => :check_boxes
           end
           f.inputs "Roles" do
              f.input :spree_roles, :as => :check_boxes
           end
           f.actions
        end
        
        index do
           column :first_name
           column :last_name
           column :email
           default_actions
        end
                
end
