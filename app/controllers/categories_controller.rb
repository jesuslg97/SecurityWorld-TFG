class CategoriesController < ApplicationController

  before_action :find_category, only: %i[ show edit update destroy]

  before_action :set_breadcrumbs

  def index
    @categories = Category.all
    add_breadcrumb("Categorías")
  end

  def show
    @articles = Article.all

    if @category.id == 1
      add_breadcrumb("Empresa", category_path)
    end

    if @category.id == 2
      add_breadcrumb("Hogar", category_path)
    end

    if @category.id == 3
      add_breadcrumb("Móvil", category_path)
    end

  end

  def new
    @category = Category.new
    add_breadcrumb("Categorías", categories_path)
    add_breadcrumb("Añadir Categoría")
  end

  def edit
    add_breadcrumb("Categorías", categories_path)
    add_breadcrumb("Editar Categoría")
  end

  def create
    @category = Category.new(strong_params_category)
    if @category.save
      redirect_to categories_path
    else
      render 'new'
    end
  end

  def update
    if @category.update(strong_params_category)
      redirect_to categories_path
    else
      render 'edit'
    end
  end

  def destroy
    @category.destroy
    redirect_to categories_path
  end

  private

  def find_category
    @category = Category.find(params[:id])
  end

  def strong_params_category
    params.require(:category).permit(:nombre, :descripcion, :image)
  end

  def set_breadcrumbs
    add_breadcrumb("Inicio", root_path)
  end

end
