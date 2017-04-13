class CreateLicenses < ActiveRecord::Migration[5.0]
  def change
    create_table :licenses do |t|
      t.string :license_name
      t.string :license_no
      t.string :license_state

      t.timestamps
    end
  end
end
