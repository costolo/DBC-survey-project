def user_from_survey(survey)
  User.find(survey.user_id)
end

def user_has_taken_survey?(survey)
  SurveyUser.find_by(survey_id: survey.id, user_id: current_user.id) ? true : false
end

def user_created_survey?(survey)
  survey.user_id == current_user.id ? true : false
end