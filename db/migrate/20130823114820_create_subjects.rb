class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.integer :total_count

      t.timestamps
    end
  end
end
