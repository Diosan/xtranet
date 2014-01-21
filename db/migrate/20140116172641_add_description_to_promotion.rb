class AddDescriptionToPromotion < ActiveRecord::Migration
  def change
    add_column :promotions, :description, :text
  end
end
