class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :quantity, :image, :price, :user, :category
  belongs_to :user
  belongs_to :category
end
