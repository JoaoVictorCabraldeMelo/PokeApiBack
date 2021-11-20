class Pokemon < ApplicationRecord

    validates :name, presence: true
    validates :image, presence: true
    validates :experience, presence: true
    
end
