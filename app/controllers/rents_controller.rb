class RentsController < ApplicationController
  def create
    @rent = Rent.new(rent_params)
    @user = current_user
    @pokemon = Pokemon.find(params["pokemon_id"])
    @rent.user = @user
    @rent.pokemon = @pokemon
    authorize @rent
    if @rent.save
      redirect_to user_path(current_user)
    else
      flash[:alert] = "You did choose any dates."
      redirect_to pokemon_path(@pokemon)
    end

  end

  private

  def rent_params
    params.require(:rent).permit(:start_time, :end_time, :total_price)
  end
end
