class CreateStudyRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :study_records do |t|
      t.integer :user_id
      t.text :grade1
      t.text :grade2
      t.text :grade3
      t.text :grade4
      t.text :grade5
      t.text :grade6

      t.timestamps
    end
  end
end
