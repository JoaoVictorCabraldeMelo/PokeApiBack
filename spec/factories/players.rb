FactoryBot.define do
  factory :player do
    pokemon
    history
  end
  factory :player1, parent: :player do 
    pokemon
    history
  end
end
