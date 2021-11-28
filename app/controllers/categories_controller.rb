class CategoriesController < ApplicationController

  before_action :find_category, only: %i[ show edit update destroy]

  def index
    @categories = Category.all
  end

  def show
    @articles = Article.all
  end

  def new
    @category = Category.new
  end

  def edit
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
    params.require(:category).permit(:nombre, :descripcion)
  end

end
