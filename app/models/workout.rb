class Workout < ActiveRecord::Base
  belongs_to :user
  attr_accessible :comment, :duration, :start_time
  has_many :running_exercises
  has_many :strength_exercises
end
