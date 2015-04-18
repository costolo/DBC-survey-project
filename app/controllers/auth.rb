get '/' do
	current_user ? (redirect '/surveys') : (erb :login)
end

get '/login' do
	erb :login
end

post '/login' do
	user = User.find_by(name: params[:name])
	if user.authenticate(params[:password])
		session[:user_id] = user.id
		redirect '/surveys'
	else
		session[:error] = "Bad login, try again"
		redirect '/login'
	end
end

post '/signup' do
	user = User.create(params[:user])
	session[:user_id] = user.id
	redirect '/'
end

get '/logout' do
	session[:user_id] = nil
	redirect '/'
end