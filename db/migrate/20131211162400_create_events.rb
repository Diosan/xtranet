class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.string :image
      t.text :description
      t.text :text
      t.references :user, index: true

      t.timestamps
    end
  end
end
