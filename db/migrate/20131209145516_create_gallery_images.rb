class CreateGalleryImages < ActiveRecord::Migration
  def change
    create_table :gallery_images do |t|
      t.references :gallery, index: true
      t.string :title
      t.text :description
      t.string :image
      t.text :text

      t.timestamps
    end
  end
end
