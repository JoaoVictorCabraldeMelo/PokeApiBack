class ListPokemon < ApplicationRecord
  belongs_to :pokemon
  belongs_to :player
end
