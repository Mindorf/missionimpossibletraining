class CreateRunningExercises < ActiveRecord::Migration
  def change
    create_table :running_exercises do |t|
      t.time :duration
      t.float :distance
      t.float :avgpulse
      t.references :workout

      t.timestamps
    end
    add_index :running_exercises, :workout_id
  end
end
