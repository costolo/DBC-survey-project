get '/question' do
  q_id = next_question
  if q_id
    question = Question.find(q_id)
    erb :_question, layout: false, locals: {question: question}
  else
    erb :'surveys/_survey_over', layout: false
  end
end

get '/questions' do
  redirect '/'
end

post '/questions' do
  @question = Question.create(params[:question])
  erb :'question-answer/_new_answers', layout: false
end

