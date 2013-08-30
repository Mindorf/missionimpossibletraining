class StrengthExercise < ActiveRecord::Base
  belongs_to :workout
  attr_accessible :name, :pauseduration, :reps, :sets
end
