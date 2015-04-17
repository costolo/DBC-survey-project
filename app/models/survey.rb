class Survey < ActiveRecord::Base
  belongs_to :user
  has_many :questions
  has_many :survey_users

  validates :title, :description, :user_id, presence: true
end
