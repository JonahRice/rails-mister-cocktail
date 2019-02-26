class DosesController < ApplicationController
  def new
    raise
    @cocktail = Cocktail.find(params)
    @dose = Dose.new
  end

  def create
    raise
    @dose = Dose.new(dose_params)
    @dose.cocktail =
    @dose.save
  end

  def destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)

  end


end
