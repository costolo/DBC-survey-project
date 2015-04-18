get '/question' do
  question = Question.find_by(id: next_question(session[:questions]))
  if question
    erb :_question, layout: false, locals: {question: question}
  else
    redirect "/users/#{current_user.id}"
  end
end

get '/questions' do
  redirect '/'
end

post '/questions' do
  @question = Question.create(params[:question])
  erb :'question-answer/_new_answers', layout: false
end

