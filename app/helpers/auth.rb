def current_user
  if session[:user_id]
    return User.find(session[:user_id])
  else
    return nil
  end
end

def set_error!(error)
  session[:error] = error
end

def get_error!
  msg = session[:error]
  session[:error] = nil
  msg
end