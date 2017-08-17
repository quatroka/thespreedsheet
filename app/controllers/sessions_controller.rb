class SessionsController < ApplicationController
  def new
  end

  def create
    params = create_params
    user = User.find_by(email: params[:email].downcase)
    if user && user.authenticate(params[:password])
      log_in user
      redirect_to controller: 'spreed_sheets', action: 'index'
    else
      # flash[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'layouts/index'
    end
  end

  private

  def create_params
    params.permit(:email, :password)
  end
end
