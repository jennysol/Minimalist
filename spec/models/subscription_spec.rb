require 'rails_helper'

RSpec.describe Subscription, type: :model do
  it "user can follow another user" do 

    matt = FactoryBot.create(:user)
    boby = FactoryBot.create(:user)

    Subscription.create(followed: boby, followed_by: matt)
    
  end
end