class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :pokemons
  has_many :pokemons
end
