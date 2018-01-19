class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :title, :comments, :user


end
