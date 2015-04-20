class AnswerUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :answer
  belongs_to :question

  validates :user_id, :answer_id, :question_id, presence: true
end
