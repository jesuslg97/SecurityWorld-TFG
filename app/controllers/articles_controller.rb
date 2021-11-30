class ArticlesController < ApplicationController

  before_action :find_article, only: %i[ show edit update destroy]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    @attacks = Attack.all
    @questions = Question.all
    @generals = General.all
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.new(strong_params_article)
    if @article.save
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def update
    if @article.update(strong_params_article)
      redirect_to articles_path
    else
      render 'edit'
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def find_article
    @article = Article.find(params[:id])
  end

  def strong_params_article
    params.require(:article).permit(:nombre, :descripcion, :texto, :category_id, :image)
  end

end
