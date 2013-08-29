class User < ActiveRecord::Base
  attr_accessible :birthday, :email, :firstname, :lastname, :password_hash, :password_salt
end
