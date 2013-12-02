class AddProductRangeRefToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :product_range, index: true
  end
end
