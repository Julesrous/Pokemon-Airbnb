class PokemonsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      @searchPok = Pokemon.where("name ILIKE ?", "%#{params[:query]}%")
    end
    @pokemons = Pokemon.all
    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: 'list.html', locals: { pokemons: @searchPok } }
    end
    @pokemons = policy_scope(Pokemon)
  end

  def show
    @pokemon = Pokemon.find(params[:id])
    authorize @pokemon
    @marker = { lat:  @pokemon.user.latitude, lng: @pokemon.user.longitude } if @pokemon.user.geocoded?
    @rent = Rent.new
    @review_pok = ReviewPokemon.new
    @chatroom = Chatroom.new
    @chatrooms = Chatroom.all
    @chatroomCurrentUser = nil
    @chatrooms.each do |chatroom|
      if chatroom.users.include?(current_user) && chatroom.users.include?(@pokemon.user)
        @chatroomCurrentUser = chatroom
      end
    end


  end

  def new
    @pokemon = Pokemon.new
    authorize @pokemon
  end 
  
  def create
    @pokemon = Pokemon.new(pokemon_params)
    @user = current_user
    @pokemon.user = @user
    authorize @pokemon
    if @pokemon.save
      redirect_to pokemon_path(@pokemon)
    else
      render :new
    end
  end
  
  private

  def pokemon_params
    params.require(:pokemon).permit(:name, :nature, :power, :level, :photo, :price_per_week, :description)
  end
end
