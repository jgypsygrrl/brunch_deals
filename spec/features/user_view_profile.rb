require 'spec_helper'

describe "a logged-in user can view profile on each page" do
  let(:user) { User.create(:email => 'test@email.com',
                         :password => 'password',
                         :password_confirmation => 'password',
                         :first_name => 'first',
                         :last_name => 'last',
                         :dob => "03/01/2013",
                         :gender => "F"
              )}
  
  before(:each) do
    user_login
  end

  it "can login and access profile" do
    visit root_path(user)

    within 'div.login' do
      click_link "View Profile"
    end

    within ".profile" do 
      expect(page).to have_content "Edit My Info"
    end
      
  end

  def user_login
    visit '/login'

    within 'form' do
      fill_in :email, with: user.email
      fill_in :password, with: "password"
    end

    click_link "Log In"

  end
end
