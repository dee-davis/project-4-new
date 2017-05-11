class CreateCareerApplications < ActiveRecord::Migration[5.0]
  def change
        create_table :career_applications do |t|
          t.string :name
          t.string :slug

          t.timestamps
        end
        add_index :users, :slug, unique: true
  end
end
