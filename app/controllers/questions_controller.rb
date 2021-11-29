class QuestionsController < ApplicationController

  before_action :find_question, only: %i[ edit update destroy]

  def index
  end

  def show
    @article = Article.find(params[:id])
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def edit
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

end
