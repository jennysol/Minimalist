class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :phone, :name, :avatar, presence: true

  has_one_attached :avatar
  has_many :posts
  has_many :followers_subscriptions, foreign_key: :followed_id, class_name: 'Subscription'
  has_many :followers, through: :followers_subscriptions, source: :followed_by
end
