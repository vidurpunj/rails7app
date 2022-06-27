class DashboardController < ApplicationController

  before_action :authenticate_user!
  def login
    @user = User.new
  end

  def login_submit
    user = User.find_by_email(login_params[:email])
    if user
      if user.valid_password?(login_params[:password])
        flash[:notice]  = "Welcome to you account"
      else
        flash[:notice] = "email and password do not match"
      end
    else
      flash[:alert] = "user with this email do not exists"
    end
  end

  def signup

  end

  def signup_submit

  end

  def logout

  end

  private

  def login_params
    params.require(:user).permit(:email, :password)
  end

  def signup_params
    params.require(:user).permit(:firstname, :last_name, :email, :password, :password_confirmation)
  end


end
