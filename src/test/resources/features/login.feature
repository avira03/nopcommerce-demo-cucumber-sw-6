Feature: Verify Login Feature

  @sanity @regression
  Scenario: User should navigate to login page successfully
    Given I am on homepage
    When I click on login link
    Then I should navigate to login page successfully and verify the message "Welcome, Please Sign In!"

  @smoke @regression
  Scenario: Verify the error message with invalid credentials
    Given I am on homepage
    When I click on login link
    And I enter email "paragpatel66@gmail.com"
    And I enter password "parag100"
    And I click on login button
    Then I should see the error message "Login was unsuccessful"

  @regression
  Scenario: User should login successfully with valid credentials
    Given I am on homepage
    When I click on login link
    And I enter email "Mira20@gmail.com"
    And I enter password "mira2002"
    And I click on login button
    Then I should login successfully and verify the logout link

  @regression
  Scenario: User should logout successfully
    Given I am on homepage
    When I click on login link
    And I enter email "Mira20@gmail.com"
    And I enter password "mira2002"
    And I click on login button
    And I click on logout link
    Then I should logout successfully and verify the login link

