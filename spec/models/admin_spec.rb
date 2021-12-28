require 'rails_helper'

RSpec.describe Admin, type: :model do
  it "admin is valid" do 
    admin = Admin.new(email: 'admin@social.com', password: '123456', name: 'Admin')

    expect(admin.email).to eql 'admin@social.com'
    expect(admin).to be_valid
  end

  it "admin is not valid" do 
    admin = Admin.new(email: 'admin@social.com')
    
    expect(admin).to_not be_valid
  end
end
