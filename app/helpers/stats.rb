def surveys_made_stats (survey)
	all_q_and_a = []
	survey.questions.each do |question|
		most_popular = []
		all_answers = AnswerUser.where("question_id = ?", question.id)
		question.answers.each do |answer|
			answer_array = AnswerUser.where("question_id = ? AND answer_id = ?", question.id, answer.id)
			if answer_array.count > most_popular.count
				most_popular = answer_array
				all_q_and_a << "#{question.content}, #{answer.content}: #{((most_popular.count.to_f/all_answers.count.to_f) * 100).round(2)} %"

			elsif answer_array.count == most_popular.count
				
			else

			end
		end
	end
	all_q_and_a
end


def surveys_taken_stats (survey)

end
