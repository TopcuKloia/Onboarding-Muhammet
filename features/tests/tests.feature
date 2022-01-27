Feature:

  Background:
    Given Go to webpage "https://www.bestbuy.com/"
    #Below case can be "United States", "Canada" or "Mexico"
    Then Choose "United States"
    Then Close survey

  Scenario: Task 1
    Then Verify Page Title is "Best Buy | Official Online Store | Shop Now & Save"
    And Maximize window
    Then Search for "Drone"
    And Verify search results for "Drone"

  Scenario Outline: Task 2
    Then Go to sign-in page
    And Fill login form with <username> and <password>
    Then Log in with Enter button
    And Verify successful login
    Examples:
      | username               | password   |
      | deneme.kloia@gmail.com | Deneme123_ |
  Scenario Outline: Task 3
    Then Go to sign-in page
    And Click on Gmail
    Then Change to last window
    And Enter your email: <username> and press enter
    Then Enter your password: <password> and press enter
    And Change to first window
    Then Open new window
    And Change to last window
    Then Go to webpage "https://www.bestbuy.com/"
    And Verify successful login
    Examples:
      | username               | password   |
      | deneme.kloia@gmail.com | deneme123 |
  Scenario: Task 4
    Then Click on Menu Button
    And Choose "Audio" from dropdown menu
    Then Choose "Headphones" from dropdown menu
    Then Choose "Wireless Headphones" from dropdown menu
    And Search for Brand: "Philips"
    Then Click on nth item: "2"
    And Save item
    Then Open Saved Item Page
    And Verify the page is not empty
