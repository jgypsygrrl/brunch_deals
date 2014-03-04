module LoginSpecHelper
  def user_login
    visit '/login'

    within 'form' do
      fill_in :email, with: "test@email.com"
      fill_in :password, with: "password"
    end

    click_link "Log In"

  end

end
  