class Post < ApplicationRecord
  belongs_to :user
  has_many :likes

  validates :body, presence: true

  def liked_by_user?(user)
    likes.where(user: user).present?
  end
end
  