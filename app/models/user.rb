class User < ActiveRecord::Base
  attr_accessible :birthday, :email, :firstname, :height, :lastname, :password_hash, :password_salt, :username
end
