get '/' do
  session[:user_id] = 1
	redirect '/surveys'
end

get '/surveys' do
  @surveys = Survey.all
  erb :'surveys/index'
end

get '/surveys/new' do
  @user = current_user
  erb :'surveys/new'
end

get '/surveys/:id' do |id|
  @survey = Survey.find(id)
  erb :'/surveys/show'
end

post '/surveys' do
  Survey.create(params[:survey])
  erb :'question-answer/_new_question', layout: false
end
