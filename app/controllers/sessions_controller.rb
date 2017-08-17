class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)

    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to controller: 'spreed_sheets', action: 'index'
    else
      render 'layouts/index'
    end
  end
end
