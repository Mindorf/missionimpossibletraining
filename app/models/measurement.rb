class Measurement < ActiveRecord::Base
  belongs_to :user
  belongs_to :indicator
  attr_accessible :value
end
