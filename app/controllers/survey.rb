
# get routes for surveys

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
  @questions = @survey.questions
  session[:questions] = @questions.pluck(:id)
  erb :'surveys/show'
end

# create a new survey route

post '/surveys' do
  @survey = Survey.create(params[:survey])
  erb :'question-answer/_new_question', layout: false
end

# edit a survey route

get '/surveys/:id/edit' do |id|
  @survey = Survey.find(id)
  erb :'surveys/edit'
end

put '/surveys/:id' do |id|
  survey = Survey.find(id)
  survey.update(params[:survey])
  redirect "/surveys/#{id}"
end

# delete a survey route

delete '/surveys:id' do |id|
  survey = Survey.find(id)
  survey.destroy!
  redirect '/surveys'
end

