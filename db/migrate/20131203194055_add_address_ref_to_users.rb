class AddAddressRefToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :address, index: true
  end
end
