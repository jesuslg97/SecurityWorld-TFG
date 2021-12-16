class ArticlesController < ApplicationController

  before_action :find_article, only: %i[show edit update destroy]

  before_action :set_breadcrumbs

  def index
    @articles = Article.all
    add_breadcrumb("Artículos")
  end

  def show
    @category = Article.find(params[:category_id])
    @attacks = Attack.all
    @questions = Question.all
    @generals = General.all
    @comments = Comment.all
    @user = Comment.find(params[:id])
    @users = User.all

    if @article.id == 1 || @article.id == 4 || @article.id == 7
      add_breadcrumb("Medidas generales")
    end

    if @article.id == 2 || @article.id == 5 || @article.id == 8
      add_breadcrumb("Preguntas frecuentes")
    end

    if @article.id == 3 || @article.id == 6 || @article.id == 9
      add_breadcrumb("Ataques específicos")
    end

  end

  def new
    @article = Article.new
    add_breadcrumb("Artículos", articles_path)
    add_breadcrumb("Añadir Artículo")
  end

  def edit
    add_breadcrumb("Artículos", articles_path)

    if @article.category_id == 1
      add_breadcrumb("Editar " + @article.nombre + " Empresa")
    end

    if @article.category_id == 2
      add_breadcrumb("Editar " + @article.nombre + " Hogar")
    end

    if @article.category_id == 3
      add_breadcrumb("Editar " + @article.nombre + " Móvil")
    end

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
    params.require(:article).permit(:nombre, :descripcion, :introduccion, :category_id, :image)
  end

  def set_breadcrumbs
    add_breadcrumb("Inicio", root_path)

    if user_signed_in? && current_user.id != 1 || user_signed_in? == false
      if @article.category_id == 1
        add_breadcrumb("Empresa", category_path(@article.category_id))
      end

      if @article.category_id == 2
        add_breadcrumb("Hogar", category_path(@article.category_id))
      end

      if @article.category_id == 3
        add_breadcrumb("Móvil", category_path(@article.category_id))
      end
    end

  end

end
