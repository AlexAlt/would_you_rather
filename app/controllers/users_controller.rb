class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Nailed it!!"
    else
      flash[:alert] = "Invalid email or password"
      render :new
    end
  end


private

  def user_params
    params.require(:user).permit(:password, :email, :username, :password_confirmation)
  end

end
