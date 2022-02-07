Feature:
  As a new user
  I want to be able to sign up using my email
  So that I will be on the site members list
  Scenario: A new user creates a personal account using an email
    Given Sign Up page

    When I click Get Started
    Then I am taken to the Create Account page
    And I see the page with the fields: First name, Last name, Email, Password, and the Sign up button
    And I see the Google+ and Facebook icons below the Create Account label
    And I see the Log In button in the upper-right corner of the page next to the label "Already have an account?"

    When on the sign-up page I entered an invalid email address, and then click Sign up
    Then I see the error message "Please enter valid email"

    When on the sign-up page I entered an invalid password, and click Sign up
    Then I see the error message "Password must contain at least 8 characters (letters and numbers)"

    When I enter an email of the user that is already registered
    Then I see the error message "The user with this email already exists in the system"

    When I complete the sign-up form with valid data and then click Sign up
    Then I am taken to the Log in page

    When I check my email
    Then I see a registration confirmation letter and the Go to website button

    When I click Go to website
    Then I am taken to the Log in page