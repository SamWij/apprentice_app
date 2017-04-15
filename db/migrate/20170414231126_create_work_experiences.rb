class CreateWorkExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :work_experiences do |t|
      t.string :company
      t.string :job
      t.date :date_started
      t.date :date_finished
      t.text :summary

      t.timestamps
    end
  end
end
