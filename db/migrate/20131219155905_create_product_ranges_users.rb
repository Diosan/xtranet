class CreateProductRangesUsers < ActiveRecord::Migration
  def change
    create_table :product_ranges_users, :id => false do |t|
      t.references :product_range, :user
    end

    add_index :product_ranges_users, [:product_range_id, :user_id],
      name: "product_ranges_users_index",
      unique: true
  end
end
