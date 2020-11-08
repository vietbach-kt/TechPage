class Micropost < ApplicationRecord
  belongs_to :user
  # has_many :comments, as: :commentable
  has_many :comments
  default_scope -> { order(created_at: :desc) }
end
