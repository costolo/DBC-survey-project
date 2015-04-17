

get '/surveys' do
  @surveys = Survey.all
  erb :'surveys/index'
end

get '/surveys/new' do
  erb :'surveys/new'
end

get '/surveys/:id' do |id|
  @survey = Survey.find(id)
  erb :'surveys/show'
end

post '/surveys' do
  Survey.create(params[:survey])
  redirect '/surveys'
end

get '/surveys/:id/edit' do |id|
  @survey = Survey.find(id)
  erb :'surveys/edit'
end

put '/surveys/:id' do |id|
  survey = Survey.find(id)
  survey.update(params[:survey])
  redirect "/surveys/#{id}"
end

delete '/surveys:id' do |id|
  survey = Survey.find(id)
  survey.destroy!
  redirect '/surveys'
end