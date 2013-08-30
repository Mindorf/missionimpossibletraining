class CreateStrengthExercises < ActiveRecord::Migration
  def change
    create_table :strength_exercises do |t|
      t.string :name
      t.integer :sets
      t.integer :reps
      t.time :pauseduration
      t.references :workout

      t.timestamps
    end
    add_index :strength_exercises, :workout_id
  end
end
