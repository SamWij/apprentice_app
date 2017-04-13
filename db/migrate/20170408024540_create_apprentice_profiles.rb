class CreateApprenticeProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :apprentice_profiles do |t|
      t.integer :qual_id
      t.integer :license_id
      t.integer :work_exp_id
      t.string :industry_type
      t.text :summary

      t.timestamps
    end
    add_index :apprentice_profiles, [:user_id, :created_at]
  end
end
