require 'rails_helper'

RSpec.describe ListPokemon, type: :model do
  describe "Association test" do
    it { should belong_to(:pokemon) }
    it { should belong_to(:player) }
  end 
end
