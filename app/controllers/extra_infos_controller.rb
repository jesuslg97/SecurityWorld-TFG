class ExtraInfosController < ApplicationController

  def index
    @extra_infos = ExtraInfo.all
  end

  def show
    @extra_infos = ExtraInfo.find(params[:id])
    @extras = Extra.all
  end

end
