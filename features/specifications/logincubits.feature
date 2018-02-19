Feature: Login cubits

  Scenario: Login positive scenario

    Given I open login page
    Then I should see login to cubits text
    When I enter email and password fields with registered credentials
    And click on login
    Then I should be successfully logged in

  Scenario: Login with empty fields

    Given I open login page
    Then I should see login to cubits text
    And click on login
    Then I should see invalid login password error

  Scenario: Login with incorrect email

    Given I open login page
    Then I should see login to cubits text
    When I enter incorrect email and password fields
    And click on login
    Then I should see incorrect login password error
