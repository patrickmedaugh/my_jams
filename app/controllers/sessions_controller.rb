class SessionsController < ApplicationController

  def show
  end

  def destroy
    session.clear
    flash[:notice] = "Successfully logged out"
    redirect_to login_path
  end

  def new
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id #sets current user
      redirect_to @user
      flash[:notice] = "Successfully logged in!"
    else
      flash[:errors] = "Invalid login"
      render :new
    end
  end

  private

  def session_params
    params.require(:session).permit(:username, :password)
  end

end
