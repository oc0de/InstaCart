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
  end

  def welcome
    @user = User.find(params[:id])
    if params[:status]
      flash[:success] = "Welcome to the instacart!"
      log_in @user
      @user.permission = true
      @user.save
    else
      @user.delete
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def edit
    @user = User.find(params[:id])
  end


  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :phone_number, :zip_code, :password, :password_confirmation)
    end

end
