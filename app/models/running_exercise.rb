class RunningExercise < ActiveRecord::Base
  belongs_to :workout
  attr_accessible :avgpulse, :distance, :duration
  validates :distance, presence: true
  validates :duration, presence: true
end
