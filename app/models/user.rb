class User < ActiveRecord::Base
  has_many :auditions
  has_many :comments
end
