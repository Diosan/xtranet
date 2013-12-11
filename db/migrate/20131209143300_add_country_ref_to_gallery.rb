class AddCountryRefToGallery < ActiveRecord::Migration
  def change
    add_reference :galleries, :country, index: true
  end
end
