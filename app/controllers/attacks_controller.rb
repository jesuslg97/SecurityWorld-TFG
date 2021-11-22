class AttacksController < ApplicationController

  def index
    @attacks = Attack.all
  end

  def show
    @attacks = Attack.find(params[:id])
    @contents = Content.all
  end

end
