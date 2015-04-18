# get routes for surveys

get '/surveys' do
  @surveys = Survey.all
  erb :'surveys/index'
end

get '/surveys/new' do
  erb :'surveys/new'
end

get '/surveys/:id' do |id|
  @survey = Survey.find(id)
  @questions = @survey.questions
  session[:questions] = @questions.pluck(:id)
  erb :'surveys/show'
end

get '/surveys/:id/stats' do |id|
  @survey = Survey.find(id)
  if request.xhr?
    erb :'surveys/_survey_stats', layout: false
  end
end

# create a new survey route

post '/surveys' do
  Survey.create(params[:survey])
  redirect '/surveys'
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
