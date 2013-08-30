class RunningExercise < ActiveRecord::Base
  belongs_to :workout
  attr_accessible :avgpulse, :distance, :duration
end
