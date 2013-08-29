class User < ActiveRecord::Base
  attr_accessible : :birthday, :email, :firstname, :height, :lastname, :password_hash, :username
  has_many :goals
  has_many :workouts
end
