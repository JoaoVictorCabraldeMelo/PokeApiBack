class CreateListPokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :list_pokemons do |t|
      t.belongs_to :pokemon, null: false, foreign_key: true
      t.belongs_to :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
