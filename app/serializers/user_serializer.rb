class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :large_image, :small_image, :isbn
  has_many :comments
  has_many :posts
end
