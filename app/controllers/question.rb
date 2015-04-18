get '/questions/:id' do |id|
  question = Question.find(id)
  erb :_question, layout: false, locals: {question: question}
end
