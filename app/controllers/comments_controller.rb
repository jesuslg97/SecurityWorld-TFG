class CommentsController < ApplicationController

  before_action :find_comment, only: %i[show edit update destroy]

  before_action :set_breadcrumbs

  def index
    @comments = Comment.all
    add_breadcrumb("Artículos")
  end

  def show
  end

  def new
    @comment = Comment.new
  end

  def edit
  end

  def create
    @comment = Comment.new(strong_params_comment)
    if @comment.save
      redirect_to comments_path
    else
      render 'new'
    end
  end

  def update
    if @comment.update(strong_params_comment)
      redirect_to comments_path
    else
      render 'edit'
    end
  end

  def destroy
    @comment.destroy
    redirect_to comments_path
  end

  private

  def find_comment
    @comment = Comment.find(params[:id])
  end

  def strong_params_comment
    params.require(:comment).permit(:titulo, :comentario, :user_id, :article_id)
  end

  def set_breadcrumbs
    add_breadcrumb("Inicio", root_path)
  end

end
