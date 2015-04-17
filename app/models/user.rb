class User < ActiveRecord::Base
  has_secure_password
  has_many :survey_users
  has_many :answer_users
  has_many :surveys

  validates :name, :password_digest, presence: true
  validates :name, uniqueness: true
end
