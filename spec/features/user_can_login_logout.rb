require 'spec_helper'

describe "a user can login and logout" do
  let(:user) { FactoryGirl.create(:user)}

  it "creates a user" do
    visit root_path
    click_link "Save your Favs? Join Here"

    fill_in "user_email", with: "testing@email.com"
    fill_in "password", with: "password"
    fill_in "password_confirmation", with: "password"
    fill_in "first_name", with: "first_name"
    
  end
end