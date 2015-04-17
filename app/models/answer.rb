class Answer < ActiveRecord::Base
  belongs_to :question
  has_many :answer_users

  validates :content, :question_id, presence: true
end
