class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :type
      t.datetime :start_time
      t.time :duration
      t.float :avg_pulse
      t.string :comment
      t.references :user

      t.timestamps
    end
    add_index :workouts, :user_id
  end
end
