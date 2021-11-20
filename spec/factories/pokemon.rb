

FactoryBot.define do 
    factory :pokemon do 
        name { "snorunt" }
        image { "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/361.png" }
        experience { 60 }
    end
    factory :pokemon_without_title, parent: :pokemon do
        name { nil }        
    end
    factory :pokemon_without_image, parent: :pokemon do
        image { nil }
    end
    factory :pokemon_without_experience, parent: :pokemon do
        experience { nil }
    end
end 