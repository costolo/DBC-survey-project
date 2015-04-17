require 'faker'

User.create(name: "user", password: "user")
Survey.create(title: "survey", description: "survey", user_id: 1)
Question.create(content: "questions", survey_id: 1)
Answer.create(content: "answer", question_id: 1)
SurveyUser.create(user_id: 1, survey_id: 1)
AnswerUser.create(user_id: 1, answer_id: 1)

10.times do
  Survey.create(title: Faker::Company.name, description: Faker::Company.catch_phrase, user_id: 1)
end 
  