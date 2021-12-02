class GeneralsController < ApplicationController

  before_action :find_general, only: %i[ edit update destroy]

  before_action :set_breadcrumbs

  def index
  end

  def show
    @article = Article.find(params[:id])
    @generals = General.all
    add_breadcrumb("Medidas generales")
  end

  def new
    @general = General.new
    add_breadcrumb("Añadir Medida")
  end

  def edit
    if @general.article_id == 1
      add_breadcrumb("Medidas generales Empresa", general_path(:id => 1))
    end

    if @general.article_id == 4
      add_breadcrumb("Medidas generales Empresa", general_path(:id => 4))
    end

    if @general.article_id == 7
      add_breadcrumb("Medidas generales Empresa", general_path(:id => 7))
    end

    add_breadcrumb("Editar Medida")
  end

  def create
    @general = General.new(strong_params_general)
    if @general.save
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def update
    if @general.update(strong_params_general)
      redirect_to articles_path
    else
      render 'edit'
    end
  end

  def destroy
    @general.destroy
    redirect_to articles_path
  end

  private

  def find_general
    @general = General.find(params[:id])
  end

  def strong_params_general
    params.require(:general).permit(:titulo, :informacion, :article_id)
  end

  def set_breadcrumbs
    add_breadcrumb("Inicio", root_path)
    add_breadcrumb("Artículos", articles_path)
  end

end
