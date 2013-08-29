class Workout < ActiveRecord::Base
  belongs_to :user
  attr_accessible :avg_pulse, :comment, :duration, :start_time, :type
end
