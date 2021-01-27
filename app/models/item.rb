class Item < ApplicationRecord
    belongs_to :user
    belongs_to :category 

    validates :category, :name, :description, :quantity, :image,  presence: true
end
