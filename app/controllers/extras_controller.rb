class ExtrasController < ApplicationController

  def index
    @extras = Extra.all
  end

  def show
    @extras = Extra.find(params[:id])
    @extra_infos = ExtraInfo.all
  end

end
