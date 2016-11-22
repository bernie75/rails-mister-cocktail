class CocktailsController < ApplicationController
before_action :set_cocktail, only: [:show, :edit, :update, :destroy]
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
    @ingredients = Ingredient.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    Cloudinary::Uploader.upload(cocktail_params[:photo])
    if @cocktail.save
      redirect_to @cocktail
    else
      render 'new'
end
    end

  def edit
    @cocktail = Cocktail.find(params[:id])
end

  def update
    @cocktail.update(cocktail_params)
    if @cocktail.save
      redirect_to @cocktail
    else
      render :edit
    end
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private



  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:cocktail).permit(:name, :photo, :photo_cache)
  end

end
