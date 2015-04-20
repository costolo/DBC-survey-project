def next_question
  session[:questions].shift
end
