class AddUserIdToLicenses < ActiveRecord::Migration[5.0]
  def change
    add_column :licenses, :user_id, :integer
    add_column :qualifications, :user_id, :integer
    add_column :work_experiences, :user_id, :integer
  end
end
