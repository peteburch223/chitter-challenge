
module SessionHelpers

  EMAIL = 'test@example.com'
  NAME = "Terry Tester"
  USERNAME = 'testy'
  PASSWORD = 'password'


  def sign_up(email: EMAIL,
              username: USERNAME,
              name: NAME,
              password: PASSWORD,
              password_confirmation: PASSWORD)
    visit '/users/new'
    fill_in('email', with: email)
    fill_in('name', with: name)
    fill_in('username', with: username)
    fill_in('password', with: password)
    fill_in('password_confirmation', with: password_confirmation)
    click_button('Sign Up')
  end

  def sign_in(email, password)
    visit '/sessions/new'
    fill_in('email', with: email)
    fill_in('password', with: password)
    click_button('Sign In')
  end
end
