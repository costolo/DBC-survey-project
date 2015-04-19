post '/survey_users' do
  SurveyUser.create(params[:survey_user])
end
