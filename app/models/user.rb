require 'bcrypt'

class User < ActiveRecord::Base
  attr_accessible :birthday, :email, :firstname, :height, :lastname, :password, :password_confirmation, :username
  has_many :workouts
  
  before_save { |user| user.email = email.downcase }
  
  validates :firstname, presence: true
  validates :lastname, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false}
  validates_presence_of :password, :on => :create
  validates_presence_of :password_confirmation, :on => :create
  
  attr_accessor :password
  before_save :encrypt_password
  
  validates_confirmation_of :password

  
  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
  
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
end
