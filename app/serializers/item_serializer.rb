class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :quantity, :image, :price
  belongs_to :user
  belongs_to :category
end
