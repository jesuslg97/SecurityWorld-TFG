class QuestionsController < ApplicationController

  before_action :find_question, only: %i[ edit update destroy]

  before_action :set_breadcrumbs

  def index
  end

  def show
    @article = Article.find(params[:id])
    @questions = Question.all

    if @article.id == 2
      add_breadcrumb("Preguntas frecuentes Empresa")
    end

    if @article.id == 5
      add_breadcrumb("Preguntas frecuentes Hogar")
    end

    if @article.id == 8
      add_breadcrumb("Preguntas frecuentes Móvil")
    end

  end

  def new
    @question = Question.new
    add_breadcrumb("Añadir Pregunta")
  end

  def edit
    if @question.article_id == 2
      add_breadcrumb("Preguntas frecuentes Empresa", article_question_path(:id => 2))
    end

    if @question.article_id == 5
      add_breadcrumb("Preguntas frecuentes Hogar", article_question_path(:id => 5))
    end

    if @question.article_id == 8
      add_breadcrumb("Preguntas frecuentes Móvil", article_question_path(:id => 8))
    end

    add_breadcrumb("Editar Pregunta")
  end

  def create
    @question = Question.new(strong_params_question)
    if @question.save
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def update
    if @question.update(strong_params_question)
      redirect_to articles_path
    else
      render 'edit'
    end
  end

  def destroy
    @question.destroy
    redirect_to articles_path
  end

  private

  def find_question
    @question = Question.find(params[:id])
  end

  def strong_params_question
    params.require(:question).permit(:pregunta, :respuesta, :article_id)
  end

  def set_breadcrumbs
    add_breadcrumb("Inicio", root_path)
    add_breadcrumb("Artículos", articles_path)
  end

end
