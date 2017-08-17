class UsersController < ApplicationController
  before_action :signed_in_user
  before_action :current_user
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
