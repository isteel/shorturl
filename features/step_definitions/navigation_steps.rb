Given('there is a known shorturl') do
  @shorturl = FactoryBot.create(:shorturl, targeturl: 'https://www.horseanhounds.com', shorturl: 'Woofers')
end

When('a browser visits the url') do
  visit @shorturl.shorturl
end

Then('a redirect to the targeturl is received') do
  expect(page).to have_current_path(@shorturl.targeturl)
end

When('a browser visits the {int} of the shorturls') do |idx|
  visit @shorturls[idx].shorturl
end

Then('the usage count for the visited shorturl {int} will have incremented by one') do |idx|
  shorturl = @shorturls[idx]
  tr = page.find(:xpath, ".//tr[./td[@class='target_cell'][text()='#{shorturl.targeturl}']]")
  expect(tr).to have_css('td.invocation_count', text: shorturl.invocation_count + 1)
end