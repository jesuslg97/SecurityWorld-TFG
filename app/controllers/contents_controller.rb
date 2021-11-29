class ContentsController < ApplicationController

  before_action :find_content, only: %i[ edit update destroy]

  def index
  end

  def show
    @attack = Attack.find(params[:id])
    @contents = Content.all
  end

  def new
    @content = Content.new
  end

  def edit
  end

  def create
    @content = Content.new(strong_params_content)
    if @content.save
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def update
    if @content.update(strong_params_content)
      redirect_to articles_path
    else
      render 'edit'
    end
  end

  def destroy
    @content.destroy
    redirect_to articles_path
  end

  private

  def find_content
    @content = Content.find(params[:id])
  end

  def strong_params_content
    params.require(:content).permit(:titulo, :informacion, :attack_id)
  end

end
