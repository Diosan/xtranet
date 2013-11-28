class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :title
      t.string :file
      t.text :description
      t.references :post, index: true

      t.timestamps
    end
  end
end
