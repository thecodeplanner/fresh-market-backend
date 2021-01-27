class Item < ApplicationRecord
    belongs_to :user
    belongs_to :category 

    validates :category, presence: true
end
