get '/questions/:id' do |id|
  question = Question.find(id)
  erb :_question, layout: false, locals: {question: question}
end

get '/questions' do
  redirect '/'
end

post '/questions' do
  @question = Question.create(params[:question])
  erb :'question-answer/_new_answers', layout: false
end

