class RemoveSplitFromPromotions < ActiveRecord::Migration
  def change
    remove_column :promotions, :split, :integer
  end
end
