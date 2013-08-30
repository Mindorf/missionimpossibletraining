class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.references :indicator
      t.references :user
      t.string :name
      t.float :start_value
      t.float :target_value

      t.timestamps
    end
    add_index :goals, :indicator_id
    add_index :goals, :user_id
  end
end
