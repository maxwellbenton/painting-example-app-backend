class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :title, :comments
  belongs_to :user


end
