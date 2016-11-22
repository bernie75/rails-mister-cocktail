class IngredientsController < ApplicationController
  def index
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
    @ingredient = Ingredient.find(params[:id])
    @cocktails = @ingredient.cocktails
  end

  def update
  end

  def destroy
  end
end
