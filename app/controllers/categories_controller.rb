class CategoriesController < ApplicationController

  def index
  end

  def show
    @categories = Category.find(params[:id])
    #@category = Category.includes(:articles).find(params[:id])
    #@articles = Article.find(params[:id])
    @articles = Article.all
  end

end
