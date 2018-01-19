class CommentSerializer < ActiveModel::Serializer
  attributes :id, :message, :user_id, :post_id


end
