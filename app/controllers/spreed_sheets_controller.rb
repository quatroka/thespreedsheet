class SpreedSheetsController < ApplicationController
  def index; end

  def import
    binding.pry
    SpreedSheet.import(params[:file])
    redirect_to index_path, notice: 'Data imported.'
  end
end
