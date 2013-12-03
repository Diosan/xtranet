module Spree
  class AddressesController < Spree::StoreController
    

    respond_to :html
    
    def new
      @address = current_user.address
    end

  end
end
