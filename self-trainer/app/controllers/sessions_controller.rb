class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(name: name_params[:name])
    if @user.authenticate(password_params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:messages] = ['Incorrect Password. Try again.']
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to home_path
  end
  private
  
  def name_params
    params.require(:user).permit(:name)
  end
  
  def password_params
    params.require(:user).permit(:password)
  end

end