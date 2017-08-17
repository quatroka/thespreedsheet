class SpreedSheetsController < ApplicationController
  def index
  end

  def import
    SpreedSheet.import(params[:file])
    redirect_to index_path, notice: 'Data imported.'
  end
end
