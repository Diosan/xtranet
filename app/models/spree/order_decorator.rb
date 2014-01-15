Spree::Order.class_eval do
#replace :delivery to any other state
#remove_checkout_step :delivery
remove_checkout_step :payment
end 
