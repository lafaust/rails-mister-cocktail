class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    # sucre synthaxique
    # redirect_to cocktail_path(id: @cocktail.id)
    # redirect_to cocktail_path(@cocktail)
    redirect_to @cocktail

  end

  private
  # To whitelist the fields your users can act on with strong params:
  def cocktail_params
    params.require(:cocktail).permit(:name, :title, :body, :photo)
  end
end
