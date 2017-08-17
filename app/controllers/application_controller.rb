class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  def index
    render 'layouts/index'
  end
end
