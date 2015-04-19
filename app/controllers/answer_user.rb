post '/answer_users' do
  AnswerUser.create(params[:answer_user])
  redirect '/question'
end
