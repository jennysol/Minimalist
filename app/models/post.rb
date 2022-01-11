class Post < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :comments

  validates :body, presence: true

  def liked_by_user?(user)
    likes.where(user: user).present?
  end
end
  