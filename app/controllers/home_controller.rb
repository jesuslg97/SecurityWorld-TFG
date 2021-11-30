class HomeController < ApplicationController

  before_action :find_home, only: %i[ edit update ]

  def index
    @homes = Home.all
  end

  def new
    @home = Home.new
  end

  def edit
  end

  def create
    @home = Home.new(strong_params_home)
    if @home.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
    if @home.update(strong_params_home)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private

  def find_home
    @home = Home.find(params[:id])
  end

  def strong_params_home
    params.require(:home).permit(:id, :image)
  end

end
