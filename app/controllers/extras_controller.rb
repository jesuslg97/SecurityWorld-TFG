class ExtrasController < ApplicationController

  before_action :find_extra, only: %i[ show edit update destroy]

  def index
    @extras = Extra.all
  end

  def show
    @extra_infos = ExtraInfo.all
  end

  def new
    @extra = Extra.new
  end

  def edit
  end

  def create
    @extra = Extra.new(strong_params_extra)
    if @extra.save
      redirect_to extras_path
    else
      render 'new'
    end
  end

  def update
    if @extra.update(strong_params_extra)
      redirect_to extras_path
    else
      render 'edit'
    end
  end

  def destroy
    @extra.destroy
    redirect_to extras_path
  end

  private

  def find_extra
    @extra = Extra.find(params[:id])
  end

  def strong_params_extra
    params.require(:extra).permit(:nombre, :descripcion, :image)
  end

end
