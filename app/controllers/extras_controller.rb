class ExtrasController < ApplicationController

  def index
  end

  def show
    @extras = Extra.find(params[:id])
  end

end
