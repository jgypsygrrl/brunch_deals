require 'spec_helper'

describe "a user can login and logout" do
  let(:user) { FactoryGirl.create(:user)}

  it "let's a user login" do
    login(user)
    expect(page).to have_content("View Profile")
    save_and_open_page
  end
  # it "creates a user" do
  #   visit root_path
  #   click_link "Save your Favs? Join Here"

  #   fill_in "user_email", with: "testing@email.com"
  #   fill_in "password", with: "password"
  #   fill_in "password_confirmation", with: "password"
  #   fill_in "first_name", with: "John"
  #   fill_in "last_name", with: "Doe"
  #   fill_in "gender", with: "female"

  #   expect(page). to have_content("Welcome")
  # end

  it "lets the user logout" do
save_and_open_page
    visit user_path

    # visit root_path

    # click_button "Log In"

    # fill_in "username", with: user.username
    # fill_in "password", with: "password"

    # click_button "Log In"

    click_button "Log Out"
    expect(page).to have_content("Log In")
  end
end