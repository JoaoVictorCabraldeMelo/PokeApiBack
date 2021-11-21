class HistoriesController < ApplicationController

    def index
        @histories = History.all
        render json: @histories 
    end

    def create
        player1 = Player.create!()
        player2 = Player.create!()
        player1.pokemons << params[:pokemon_player1_ids].map { |id| Pokemon.find(id) }
        player2.pokemons << params[:pokemon_player2_ids].map { |id| Pokemon.find(id) }
        history = History.create!(player1_id: player1.id, player2_id: player2.id)    
        render json: history
    end

    private

    def history_params
        params.permit(:pokemon_player1_ids => [], :pokemon_player2_ids => [])
    end 
end
