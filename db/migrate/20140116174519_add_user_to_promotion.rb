class AddUserToPromotion < ActiveRecord::Migration
  def change
    add_reference :promotions, :user, index: true
  end
end
