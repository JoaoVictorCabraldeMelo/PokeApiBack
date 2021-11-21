# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Pokemon, type: :model do
  describe 'Correct Validations' do
    subject { build(:pokemon) }

    it { is_expected.to validate_presence_of(:name) }

    it { is_expected.to validate_presence_of(:image) }

    it { is_expected.to validate_presence_of(:experience) }
  end

  # describe 'Association Test' do
  #   it { should have_many(:player).through(:list) }
  # end

  it 'is invalid Pokemon name' do
    pokemon = build(:pokemon_without_name)
    expect(pokemon).not_to be_valid
  end

  it 'Invalid Pokemon images' do
    pokemon = build(:pokemon_without_image)
    expect(pokemon).not_to be_valid
  end

  it 'Invalid Pokemon experience' do
    pokemon = build(:pokemon_without_experience)
    expect(pokemon).not_to be_valid
  end

  describe 'save pokemon' do
    it 'saves the pokemon in db' do
      create(:pokemon)
      expect(described_class.count).to equal(1)
    end
  end
end
