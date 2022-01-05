require 'rails_helper'

RSpec.describe Post, type: :model do
  it "post is valid" do 

    post = FactoryBot.build(:post)
    post.user = FactoryBot.build(:user)
    post.save

    expect(post).to be_valid
  end

  it "post belongs to user" do
    user = FactoryBot.create(:user)
    post = FactoryBot.create(:post, user: user)

    expect(post.user_id).to eql user.id
  end

  it "user has many posts" do
    user = FactoryBot.create(:user)
    post = FactoryBot.create(:post, user: user)

    expect(user.posts).to include post
  end
end
