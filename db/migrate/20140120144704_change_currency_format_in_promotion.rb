class ChangeCurrencyFormatInPromotion < ActiveRecord::Migration
  def self.up
    rename_column :promotions, :currency_id, :currency
    change_column :promotions, :currency, :string
  end
  
  def self.down
    change_column :promotions, :currency, :integer
    rename_column :promotions, :currency, :currency_id
  end
end
