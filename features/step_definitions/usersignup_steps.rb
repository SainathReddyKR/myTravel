Given(/^I am a non existing user$/) do
  visit root_url
  expect(page).to have_content
end

When(/^I visit the website$/) do
  expect(page).to have_content
end

Then(/^I click on the link to sign up$/) do
  expect(page).to have_content
end

Then(/^I should enter my details in the form$/) do
  expect(page).to have_content
end

Then(/^I submit the form$/) do
  expect(page).to have_content
end

Then(/^I am successfully signed up$/) do
  expect(page).to have_content
end