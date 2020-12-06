Given('there is a valid user logged in') do
  @current_user = FactoryBot.create(:user)
  visit new_user_session_path
  fill_in "user[email]", with: @current_user.email
  fill_in "user[password]", with: @current_user.password
  click_button "Log in"

  expect(page).to have_content("Sign Out")
end

When('views their list of shorturls') do
  visit new_user_session_path
  fill_in "user[email]", with: @current_user.email
  fill_in "user[password]", with: @current_user.password
  click_button "Log in"

  expect(page).to have_content("Sign Out")
  visit shorturls_path
  
end