class CreateQualifications < ActiveRecord::Migration[5.0]
  def change
    create_table :qualifications do |t|
      t.string :name
      t.string :school
      t.string :completed

      t.timestamps
    end
    add_index :qualifications, [:created_at]
  end
end
