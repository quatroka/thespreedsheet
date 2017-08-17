class SpreedSheetsController < ApplicationController
  before_action :signed_in_user
  before_action :current_user

  def index
    @spreedsheets = spreedsheets
    render layout: 'dashboard'
  end

  def import
    SpreedSheet.import(params[:file])
    redirect_to spreedsheets_path, notice: 'Data imported.'
  end

  private

  def spreedsheets
    SpreedSheet.where(user_id: @current_user)
  end
end
