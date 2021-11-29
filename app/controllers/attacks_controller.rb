class AttacksController < ApplicationController

  before_action :find_attack, only: %i[ show edit update destroy]

  def index
    @attacks = Attack.all
  end

  def show
    @attack = Attack.find(params[:id])
    @contents = Content.all
  end

  def show_admin
    @article = Article.find(params[:id])
    @attacks = Attack.all
  end

  def new
    @attack = Attack.new
  end

  def edit
  end

  def create
    @attack = Attack.new(strong_params_attack)
    if @attack.save
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def update
    if @attack.update(strong_params_attack)
      redirect_to articles_path
    else
      render 'edit'
    end
  end

  def destroy
    @attack.destroy
    redirect_to articles_path
  end

  private

  def find_attack
    @attack = Attack.find(params[:id])
  end

  def strong_params_attack
    params.require(:attack).permit(:nombre, :informacion, :article_id)
  end

end
