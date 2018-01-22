class CommentSerializer < ActiveModel::Serializer
  attributes :id, :message, :user, :post
  def user
      object.user.id
  end
  def post
      object.post.id
  end
end
