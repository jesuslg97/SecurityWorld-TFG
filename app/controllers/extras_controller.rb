class ExtrasController < ApplicationController

  def index
    @extra = Extra.find(params[:id])
  end

  def show
    @extra = Extra.find(params[:id])
    @extra_infos = ExtraInfo.all
  end

end
