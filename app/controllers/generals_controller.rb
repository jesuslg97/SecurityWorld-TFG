class GeneralsController < ApplicationController

  before_action :find_general, only: %i[ edit update destroy]

  def index
  end

  def show
    @article = Article.find(params[:id])
    @generals = General.all
  end

  def new
    @general = General.new
  end

  def edit
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

end
