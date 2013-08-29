class User < ActiveRecord::Base
  attr_accessible :birthday, :height, :email, :firstname, :lastname, :password_hash, :password_salt
  has_many :workouts, :goals
end
