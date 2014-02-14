ActiveAdmin.register User do

        form do |f|
           f.inputs :email, :password
           f.inputs "Address", :for => [:address, f.object.address || ::Spree::Address.new] do |address|
                 address.inputs :first_name, :last_name, :country, :state, :city, :address1, :address2, :zipcode, :phone, :alternative_phone, :company
           end
           f.inputs "Product Ranges" do
              f.input :product_ranges, :as => :check_boxes
           end
           f.inputs "Roles" do
              f.input :spree_roles, :as => :check_boxes
           end
           f.actions
        end
        
end
