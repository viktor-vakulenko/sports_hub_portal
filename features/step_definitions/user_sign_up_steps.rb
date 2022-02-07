Given(/^Sign Up page$/) do

  $browser.goto 'http://127.0.0.1:3000/'
  $user = Homepage.new
end

When(/^I visit any page on the site$/) do
  $browser.goto 'http://127.0.0.1:3000/'
end

Then(/^I see the Get Started button in the upper\-right corner of the page$/) do
  $user.sign_up_button.flash
  expect($user.sign_up_button.present?).to be true
end
