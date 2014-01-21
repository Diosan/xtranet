class AddPromotionToDocument < ActiveRecord::Migration
  def change
    add_reference :documents, :promotion, index: true
  end
end
