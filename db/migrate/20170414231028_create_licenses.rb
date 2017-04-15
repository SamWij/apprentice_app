class CreateLicenses < ActiveRecord::Migration[5.0]
  def change
    create_table :licenses do |t|
      t.string :name
      t.string :number
      t.date :expiry

      t.timestamps
    end
  end
end
