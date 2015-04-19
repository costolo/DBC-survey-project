def surveys_made_stats (survey)
	all_q_and_a_stats = []
	survey.questions.each do |question|
		all_q_and_a_stats << "#{question.content}"
		all_answerusers = AnswerUser.where("question_id = ?", question.id)
		question.answers.each do |answer|
			answerusers = AnswerUser.where("question_id = ? AND answer_id = ?", question.id, answer.id)
			all_q_and_a_stats << "#{answer.content}: #{((answerusers.count.to_f/all_answerusers.count.to_f) * 100).round(2)} %"
		end
	end
	all_q_and_a_stats
end
