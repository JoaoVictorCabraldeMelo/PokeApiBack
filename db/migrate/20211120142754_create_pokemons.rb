# frozen_string_literal: true

class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :image
      t.integer :experience

      t.timestamps
    end
  end
end
