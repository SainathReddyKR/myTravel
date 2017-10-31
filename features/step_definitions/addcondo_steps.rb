Given(/^I am an registered user and I go to sign in page$/) do
  visit root_path
end

Given(/^I provide my email and password and sign in$/) do
  expect(page).to have_content
end

Then(/^I select add condo on home page$/) do
  expect(page).to have_content
end

And(/^I enter Name of the Condo$/) do
  expect(page).to have_content
end

And(/^I enter Rent bahts or month$/) do
  expect(page).to have_content
end

And(/^I enter Address$/) do
  expect(page).to have_content
end
And(/^I enter Contract months$/) do
  expect(page).to have_content
end

And(/^I enter Area sqm$/) do
  expect(page).to have_content
end

And(/^I enter Number of Bedrooms$/) do
  expect(page).to have_content
end

And(/^I enter Number of Bathrooms$/) do
  expect(page).to have_content
end

And(/^I enter Number of Kitchens$/) do
  expect(page).to have_content
end


And(/^I select the services in my Condo$/) do
  expect(page).to have_content
end

And(/^I select nearby supermarkets$/) do
  expect(page).to have_content
end
And(/^I submit form by selecting postadd button$/) do
  expect(page).to have_content
end


Then(/^I should be redirected to the condo details page and should be able to see my add$/) do

  expect(page).to have_content
end
