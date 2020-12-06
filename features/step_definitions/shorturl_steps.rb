When('they create a shorturl without shorturl') do
  visit new_shorturl_path
  fill_in "shorturl[targeturl]", with: 'http://www.horseandhounds.com'
  click_button "Create Shorturl"
end

Given('there are several known shorturls owned by a user') do
  @current_user = FactoryBot.create(:user)
  @shorturls = [
    FactoryBot.create(:shorturl, user: @current_user),
    FactoryBot.create(:shorturl, user: @current_user),
    FactoryBot.create(:shorturl, user: @current_user, invocation_count: 11)
  ]
end

When('they create a shorturl without targeturl') do
  visit new_shorturl_path
  fill_in "shorturl[shorturl]", with: 'Woofers'
  click_button "Create Shorturl"
end

Then('an error message of {string} will be displayed') do |err_mess|
  expect(page).to have_content(err_mess)
end

When('a browser visits an invalid shorturl') do
  visit "notWoofers"
end

Then('a page is displayed indicating the shorturl is invalid') do
  expect(page).to have_content("Not a recognised shorturl.")
end