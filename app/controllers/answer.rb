get '/answers' do
  redirect '/'
end

post '/answers' do
  [params[:ac1], params[:ac2], params[:ac3], params[:ac4], params[:ac5]].each do |answer|
    Answer.create(question_id: params[:question_id], content: answer)
  end
end