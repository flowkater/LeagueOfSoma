class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :subject_id
      t.integer :step
      t.integer :member_id

      t.timestamps
    end
  end
end
