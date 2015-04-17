def user_from_survey(survey)
  User.find(survey.user_id)
end