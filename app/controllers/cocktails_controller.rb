class CocktailsController < ApplicationController
  before_action only: [:show, :edit, :update, :destroy]
  def index
    @cocktails = Cocktail.all
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    # Unless @cocktail.valid?, #save will return false,
    # and @cocktail is not persisted.
    # TODO: present the form again with error messages.
    redirect_to cocktail_path(@cocktail)
  end


  end

  def new
    @cocktail = Cocktail.new
  end

   def edit
    @cocktail = Cocktail.find(params[:name])
  end

  def show
    @cocktail = Cocktail.find(params[:name])
  end

  def update
    @cocktail = Cocktail.find(params[:name])
    @cocktail.update(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail = Cocktail.find(params[:name])
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
