class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :quantity, :image, :price, :category, :user
  belongs_to :user
  belongs_to :category
end
