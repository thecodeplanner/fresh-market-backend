class UserSerializer < ActiveModel::Serializer
  attributes :username, :name, :bio
  # has_many :items
end
