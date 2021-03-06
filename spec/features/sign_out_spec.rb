feature 'Sign Out' do
  scenario 'user sign-out' do

    sign_up
    sign_in(SessionHelpers::EMAIL, SessionHelpers::PASSWORD)
    expect(page).to have_content("Welcome, #{SessionHelpers::NAME}")

    click_button('Sign Out')

    expect(page).not_to have_content("Welcome, #{SessionHelpers::NAME}")
    expect(page).to have_content("Goodbye")
  end
end
