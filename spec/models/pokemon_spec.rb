# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Pokemon, type: :model do
  it 'is a valid Pokemon' do
    expect(described_class.new(name: 'snorunt',
                               image: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/361.png', experience: 60)).to be_valid
  end

  it 'is not valid without name' do
    expect(described_class.new(image: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/361.png',
                               experience: 60)).not_to be_valid
  end

  it 'is not valid without image' do
    expect(described_class.new(name: 'snorut', experience: 60)).not_to be_valid
  end

  it 'is not valid without experiencie' do
    expect(described_class.new(name: 'snorut',
                               image: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/361.png')).not_to be_valid
  end

  it 'saves in the database a valid Pokemon' do
    @pokemon = described_class.new
    @pokemon.name = 'snorunt'
    @pokemon.image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/361.png'
    @pokemon.experience = 60
    @initial_count = described_class.count
    @pokemon.save!
    expect(@initial_count).not_to equal(described_class.count)
  end
end
