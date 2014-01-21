class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.references :region, index: true
      t.references :brand, index: true
      t.references :promotion_category, index: true
      t.decimal :budget_amount
      t.references :currency, index: true
      t.decimal :amount_requested
      t.integer :split
      t.decimal :amount_reimbursed
      t.references :promotion_payment_status
      t.date :payment_date
      t.string :payment_reference
      t.date :start_date
      t.date :end_date
      t.decimal :sales_volume
      t.timestamps
    end
  end
end
