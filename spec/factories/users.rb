FactoryBot.define do 
  factory :user do
    name { "User" }
    email { "user#{rand(1..100)}@user.com" }
    phone { "26484494" }
    avatar { Rack::Test::UploadedFile.new(Rails.root.join('spec/support/test-avatar.png'), 'image/png')}
    password { "123456" }
  end
end