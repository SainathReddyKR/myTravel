Given(/^I am an old user and I go to sign in page$/) do
  visit root_url
  expect(page).to have_content
end

Given(/^I enter my username and password and sign in$/) do
  expect(page).to have_content
end

Then(/^I select  add ride on homepage$/) do
  expect(page).to have_content
end

And(/^I select type of Vehicle$/) do
  expect(page).to have_content
end

And(/^add vehicle Model$/) do
  expect(page).to have_content
end

And(/^I select the fuel type$/) do
  expect(page).to have_content
end

And(/^I enter the rent$/) do
  expect(page).to have_content
end

And(/^I enter Number of seats$/) do
  expect(page).to have_content
end

And(/^I enter pickup location$/) do
  expect(page).to have_content
end

And(/^I enter the Pickup Address here$/) do
  expect(page).to have_content
end

And(/^I enter whether I deliver the vehicle to User preferred location$/) do
  expect(page).to have_content
end
And(/^I enter the Mileage$/) do
  expect(page).to have_content
end

And(/^I select the features of your Vehicle$/) do
  expect(page).to have_content
  end
And(/^I  select what the customers are restricted from$/) do
  expect(page).to have_content
end
And(/^I submit form by seleting postadd$/) do
  expect(page).to have_content
end

Then(/^I should be redirected to the new ride page and see my ride$/) do
  expect(page).to have_content
end
