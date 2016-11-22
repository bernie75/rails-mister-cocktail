class DosesController < ApplicationController
before_action :set_dose, only: [:destroy]
before_action :dose_params, only: [:new, :create, :destroy]

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      @ingredients = Ingredient.all
      render 'cocktails/show'
    end
  end

  def edit
    @cocktail = @dose.cocktail
  end

  def update
    if @dose.update(dose_params)
      redirect_to @dose.cocktail
    else
      render :edit
    end
  end

  def destroy
   @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private

  def set_dose
    @cocktail = Cocktail.find [:cocktail_id]
  end

  def dose_params
    params.require(:dose).permit(:ingredient_id, :description)
  end
end
