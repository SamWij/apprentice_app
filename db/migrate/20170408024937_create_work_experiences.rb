class CreateWorkExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :work_experiences do |t|
      t.string :company_name
      t.string :job_title
      t.text :role_description
      t.date :start
      t.date :finish

      t.timestamps
    end
  end
end
