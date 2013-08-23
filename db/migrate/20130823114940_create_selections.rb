class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.integer :subject_id
      t.integer :member_id

      t.timestamps
    end
  end
end
