class CreateQualifications < ActiveRecord::Migration[5.0]
  def change
    create_table :qualifications do |t|
      t.string :qual_name
      t.string :qualschool
      t.integer :year_comp

      t.timestamps
    end
  end
end
