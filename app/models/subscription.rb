class Subscription < ApplicationRecord
  belongs_to :followed, class: 'User'
  belongs_to :followed_by, class: 'User'
end
  