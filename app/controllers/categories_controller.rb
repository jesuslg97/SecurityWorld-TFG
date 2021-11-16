class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    #@categories = Category.find(params[:id])
  end

  def show
    @categories = Category.find(params[:id])
  end

end
