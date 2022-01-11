require 'rails_helper'

RSpec.describe Like, type: :model do
  it "user likes a post" do 

    anne = FactoryBot.create(:user)
    john = FactoryBot.create(:user)
    gaby = FactoryBot.create(:user)

    post = FactoryBot.create(:post, user: anne)

    Like.create(user: john, post: post)

    expect(post.likes.count).to eql 1
    expect(post.likes.first.user).to eql john

    Like.create(user: gaby, post: post)
    expect(post.likes.last.user).to eql gaby
    expect(post.likes.count).to eql 2

    Like.find_by(post: post, user: john).destroy
    expect(post.likes.count).to eql 1
    expect(post.likes.first.user).to eql gaby
    
  end
end