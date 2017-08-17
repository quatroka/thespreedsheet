class SpreedSheetsController < ApplicationController
  before_action :signed_in_user
  before_action :current_user

  def index; end

  def import
    SpreedSheet.import(params[:file])
    redirect_to index_path, notice: 'Data imported.'
  end
end
