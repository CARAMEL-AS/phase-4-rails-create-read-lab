class Plant < ApplicationRecord
    validates :name, :price, :image, presence: true
end
