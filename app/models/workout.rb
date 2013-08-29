class Workout < ActiveRecord::Base
  belongs_to :user
  has_many :exercises
  attr_accessible :comment, :duration, :start_time
end
