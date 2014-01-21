class CreatePromotionPaymentStatuses < ActiveRecord::Migration
  def change
    create_table :promotion_payment_statuses do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
