class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :answers

  validates :survey_id, :content, presence: true
end
