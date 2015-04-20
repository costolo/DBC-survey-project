require 'faker'

User.create(name: "user", password: "user")
User.create(name: 'toni', password: '1234')
Survey.create(title: "survey", description: "survey", user_id: 1)
Question.create(content: "questions", survey_id: 1)
Answer.create(content: "answer", question_id: 1)
SurveyUser.create(user_id: 1, survey_id: 1)
AnswerUser.create(user_id: 1, answer_id: 1, question_id: 1)

10.times do
  survey = Survey.create(title: Faker::Company.name, description: Faker::Company.catch_phrase, user_id: 1)
	 10.times do
	 	question = Question.create(content: Faker::Lorem.words.join(' ')+"?", survey_id: survey.id)
	 	4.times do
	 		answer = Answer.create(content: Faker::Lorem.words.join(' '), question_id: question.id)
	 		rand(5).times do
	 			AnswerUser.create(user_id: 1, answer_id: answer.id, question_id: question.id)
	 		end
	 	end
	end
end



