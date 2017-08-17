class UsersController < ApplicationController
  before_action :signed_in_user
  before_action :current_user
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
