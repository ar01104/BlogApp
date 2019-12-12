class Profile < ApplicationRecord
  belongs_to :user

  validates :description, :user, presence: true
end
