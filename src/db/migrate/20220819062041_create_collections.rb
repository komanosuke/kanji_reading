class CreateCollections < ActiveRecord::Migration[6.1]
  def change
    create_table :collections do |t|
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
