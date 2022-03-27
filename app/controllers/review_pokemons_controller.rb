class ReviewPokemonsController < ApplicationController
  def create
    @review = ReviewPokemon.new(review_params)
    @pokemon = Pokemon.find(params[:pokemon_id])
    @user = current_user
    @review.pokemon= @pokemon
    @review.user = @user
    authorize @review
    if @review.save
      redirect_to pokemon_path(@pokemon)
    else
      flash[:alert] = "You did not choose a content and/or a rating."
      redirect_to pokemon_path(@pokemon)
    end
  end

  private

  def review_params
    params.require(:review_pokemon).permit(:content, :rating)
  end
end
