class ExtrasController < ApplicationController

  before_action :find_extra, only: %i[ show edit update destroy]

  before_action :set_breadcrumbs

  def index
    @extras = Extra.all
    add_breadcrumb("Extras")
  end

  def show
    @extra_infos = ExtraInfo.all

    if @extra.id == 1
      add_breadcrumb("Últimas noticias")
    end

    if @extra.id == 2
      add_breadcrumb("Conceptos")
    end

    if @extra.id == 3
      add_breadcrumb("Organismos")
    end

    if @extra.id == 4
      add_breadcrumb("Leyes")
    end

  end

  def new
    @extra = Extra.new
    add_breadcrumb("Extras", extras_path)
    add_breadcrumb("Añadir Extra")
  end

  def edit
    add_breadcrumb("Extras", extras_path)
    add_breadcrumb("Editar Extra")
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

  def set_breadcrumbs
    add_breadcrumb("Inicio", root_path)
  end

end
