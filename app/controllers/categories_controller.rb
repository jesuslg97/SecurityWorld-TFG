class CategoriesController < ApplicationController

  before_action :find_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def show
    #@categories = Category.find(params[:id])
    #@category = Category.includes(:articles).find(params[:id])
    #@articles = Article.find(params[:id])
    @articles = Article.all
  end

  def new
    @categories = Category.new
  end

  def edit
  end

  def create
    @categories = Category.create(strong_params_category)
    if @categories.save
      redirect_to @categories
    else
      render 'new'
    end
  end

  def update
    if @categories.update(strong_params_category)
      redirect_to categories_path
    else
      render 'edit'
    end
  end

  def destroy
    @categories.destroy
    redirect_to categories_path
  end

  private
  def find_category
    @categories = Category.find(params[:id])
  end

  def strong_params_category
    params.require(:category).permit(:nombre, :descripcion)
  end

end
