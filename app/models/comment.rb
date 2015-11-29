class Comment < ActiveRecord::Base
  belongs_to :audition
  belongs_to :user
end
