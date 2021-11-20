require 'spec_helper'

RSpec.describe Pokemon, type: :model do
  it "should be a valid Pokemon" do
    expect(Pokemon.new(name: "snorunt",  image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/361.png", experience: 60)).to be_valid  
  end
  it "should not be valid without name" do
    expect(Pokemon.new(image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/361.png", experience: 60)).not_to be_valid
  end
  it "should not be valid without image" do
    expect(Pokemon.new(name: "snorut", experience: 60)).not_to be_valid
  end
  it "should not be valid without experiencie" do
    expect(Pokemon.new(name: "snorut", image:"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/361.png")).not_to be_valid
  end
  it "should save in the database a valid Pokemon" do
    @pokemon = Pokemon.new
    @pokemon.name = "snorunt"
    @pokemon.image = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/361.png"
    @pokemon.experience = 60
    @initial_count = Pokemon.count
    @pokemon.save!
    expect(@initial_count).not_to equal(Pokemon.count)
  end
end
