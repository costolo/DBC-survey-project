def user_from_survey(survey)
  User.find(survey.user_id)
end

def user_has_taken_survey?(survey)
  SurveyUser.find_by(survey_id: survey.id, user_id: current_user.user_id) ? true : false
end