Given(/^I am an already existing user and I go to sign in page$/) do
  visit root_url
  expect(page).to have_content
end


Then(/^I provide my credentials username and password and sign in$/) do
  expect(page).to have_content
end

When(/^I press on rent a vehicle button$/) do
  expect(page).to have_content
end

Then(/^I should see list of rides available$/) do
  expect(page).to have_content
end

When(/^I  select Add ride$/) do
  expect(page).to have_content
end

Then(/^I should be redirected to the home page$/) do
  expect(page).to have_content
end
