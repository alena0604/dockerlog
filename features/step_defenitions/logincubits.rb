Given("I open login page") do
  visit "https://cubits.com/users/sign_in"
end

Then(/^I should see login to cubits text$/) do
  expect(page).to have_xpath './/b[contains(text(),"Log in to cubits")]'
end

When(/^I enter email and password fields with registered credentials$/) do
  fill_in 'user_email', with: 'testlogin@mailinator.com'
  fill_in 'user_password', with: 'qaz123!@#'
end

When(/^click on login$/) do
  find(:css, 'button[type="submit"]').click
end

Then(/^I should be successfully logged in$/) do
  expect(page).to have_xpath '//div[@class="welc__text"]'
end

Then(/^I should see invalid login password error$/) do
  expect(page).to have_xpath '//span[contains(text(),"Invalid email or password.")]'
end

When(/^I enter incorrect email and password fields$/) do
  fill_in 'user_email', with: 'testlogin@aaaa.aa'
  fill_in 'user_password', with: 'qaz123!@#'
end

Then(/^I should see incorrect login password error$/) do
  expect(page).to have_xpath '//span[contains(text(),"Invalid email address or password.")]'
end
