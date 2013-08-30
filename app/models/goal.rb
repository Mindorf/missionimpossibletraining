class Goal < ActiveRecord::Base
  belongs_to :indicator
  belongs_to :user
  attr_accessible :name, :start_value, :target_value
end
