class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:LoginInputName])
    if user.authenticate(params[:LoginInputPassword])
      session[:user_id] = user.id
      redirect_to '/'
    else
      user.errors.add :login, "Invalid username or password"
      @errors = user.errors.full_messages
    end
  end

  def destroy
    session.clear
    redirect_to '/'
  end

private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
