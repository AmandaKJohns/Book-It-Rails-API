class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :audition_id
end
