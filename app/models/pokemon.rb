# frozen_string_literal: true

class Pokemon < ApplicationRecord
  validates :name, presence: true
  validates :image, presence: true
  validates :experience, presence: true

  has_many :lists, class_name: 'ListPokemon'
  has_many :players, through: :lists, class_name: "ListPokemon"
end
