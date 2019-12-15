class Post < ApplicationRecord
  belongs_to :user

  validates :title, :user, presence: true

  scope :user_posts, ->(user) { where(['user_id= ?', user.id]) }
end
