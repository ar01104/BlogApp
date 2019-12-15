class Profile < ApplicationRecord
  belongs_to :user

  validates :description, :user, presence: true
  validates :tags,  :user, presence: true

  scope :user_profile, ->(user) { where(['user_id= ?', user.id]) }
end
