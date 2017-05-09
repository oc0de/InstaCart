class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      permission(@user)
    else
      render 'new'
    end
  end

  def permission(user)
    @curr_user = user
    render 'permission'
    @curr_user.save

  end

  def welcome
    flash[:success] = "Welcome to the InstaCart App!"
  end


  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :phone_number, :zip_code, :password, :password_confirmation)
    end

end
