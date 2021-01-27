class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :quantity, :image, :price, :category_id, :user_id
  belongs_to :user
  belongs_to :category
end
