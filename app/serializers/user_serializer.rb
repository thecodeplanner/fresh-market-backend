class UserSerializer < ActiveModel::Serializer
  attributes :username, :name, :bio, :id
  # has_many :items
end
