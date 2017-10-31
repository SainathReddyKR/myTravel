Given(/^I am a user$/) do
  visit root_url
  expect(page).to have_content
end

And(/^there is a login option in page$/) do
  expect(page).to have_content
end

Then(/^I provide username and password$/) do
  expect(page).to have_content
end

And(/^I click on the sign in button$/) do
  expect(page).to have_content
end

Then(/^I should be getting an email to confirm my emailid$/) do
  expect(page).to have_content
end

When(/^I click on confirmation link$/) do
  expect(page).to have_content
end

Then(/^I should be logged into the system sucessfully$/) do

  expect(page).to have_content
end

