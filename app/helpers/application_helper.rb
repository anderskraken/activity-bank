module ApplicationHelper

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def is_current_user?(id)
    current_user.id == id
  end

  def find_user(input_id)
    User.find_by(id: input_id).username
  end

end
