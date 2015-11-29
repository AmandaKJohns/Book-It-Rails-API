class AuditionSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :title, :content, :user_id
  has_many :comments
end
