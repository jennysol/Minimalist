require 'rails_helper'

RSpec.describe Subscription, type: :model do
  it "user can follow another user" do 

    matt = FactoryBot.create(:user)
    boby = FactoryBot.create(:user)

    Subscription.create(followed: boby, followed_by: matt)
    
    expect(boby.followers.count).to eql 1
    expect(boby.followers).to include matt

    expect(matt.following.count).to eql 1
    expect(matt.following).to include boby

    expect(boby.following.count).to eql 0
    expect(boby.following).to_not include matt

    expect(matt.followers.count).to eql 0
    expect(matt.followers).to_not include boby

    donald = FactoryBot.create(:user)

    Subscription.create(followed: boby, followed_by: donald)

    expect(boby.followers.count).to eql 2
    expect(boby.followers).to include donald

    expect(donald.following.count).to eql 1
    expect(donald.following).to include boby
    
  end
end