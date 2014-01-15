class CreatePromotionCategories < ActiveRecord::Migration
  def change
    create_table :promotion_categories do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
