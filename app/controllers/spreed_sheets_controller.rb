class SpreedSheetsController < ApplicationController
  before_action :signed_in_user
  before_action :current_user

  def index
    @spreedsheets = spreedsheets
    render layout: 'dashboard'
  end

  def destroy
    SpreedSheet.destroy(params[:id])
    redirect_to spreedsheets_path
  end

  def import
    SpreedSheet.import(params[:file])
    redirect_to spreedsheets_path
  end

  private

  def spreedsheets
    SpreedSheet.where(user_id: @current_user)
  end
end
