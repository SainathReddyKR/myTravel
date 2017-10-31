Given(/^I am an old registered user and I go to sign in page$/) do
  visit root_url
  expect(page).to have_content
end


Then(/^I give username and password and sign in$/) do
  expect(page).to have_content
end

When(/^I press on view details  button$/) do
  expect(page).to have_content
end

Then(/^I should see condo details$/) do
  expect(page).to have_content
end

When(/^I  select rent condo$/) do
  expect(page).to have_content
end

Then(/^I should be redirected to the root page$/) do
  expect(page).to have_content
end
