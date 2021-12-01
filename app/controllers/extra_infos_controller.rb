class ExtraInfosController < ApplicationController

  before_action :find_extra_info, only: %i[ show edit update destroy]

  def index
    @extra_infos = ExtraInfo.all
    @extra = Extra.find(params[:id])
  end

  def show
    @extras = Extra.all
  end

  def new
    @extra_info = ExtraInfo.new
  end

  def edit
  end

  def create
    @extra_info = ExtraInfo.new(strong_params_extra_info)
    if @extra_info.save
      redirect_to extras_path
    else
      render 'new'
    end
  end

  def update
    if @extra_info.update(strong_params_extra_info)
      redirect_to extras_path
    else
      render 'edit'
    end
  end

  def destroy
    @extra_info.destroy
    redirect_to extras_path
  end

  private

  def find_extra_info
    @extra_info = ExtraInfo.find(params[:id])
  end

  def strong_params_extra_info
    params.require(:extra_info).permit(:nombre, :descripcion, :texto, :extra_id, :image)
  end

end