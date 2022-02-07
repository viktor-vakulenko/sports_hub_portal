Feature:
  As a new user
  I want to be able to sign up using my email
  So that I will be on the site members list

  @user_sign_up
  Scenario: A new user creates a personal account using an email
    Given Sign Up page

    When I visit any page on the site
    Then I see the Get Started button in the upper-right corner of the page