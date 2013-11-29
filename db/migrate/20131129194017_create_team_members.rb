class CreateTeamMembers < ActiveRecord::Migration
  def change
    create_table :team_members do |t|
      t.string :name
      t.string :job_title
      t.string :email
      t.string :image
      t.text :description
      t.text :curriculum_vitae

      t.timestamps
    end
  end
end
