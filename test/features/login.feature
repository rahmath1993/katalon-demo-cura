@runner
@Login
Feature: Login

        Background:
            Given I open the url

  @Login-01
  Scenario Outline: Login Succses
    And user is on "login" page
    When I click on the button "btntoggle"
    And I click on the button "menulogin"
    And  I set "<username>" to the inputfield "username"
    And I set "<password>" to the inputfield "password"
    And I click on the button "btnLogin"
    And I waiting for loading 2 seconds
    Then I expect that a text "Make Appointment" on this page
    Examples:
      | username| password          |
      | John Doe | ThisIsNotAPassword |

  @Login-02
  Scenario: Check Login Failed because username and password do not match
    And user is on "login" page
    When I click on the button "btntoggle"
    And I click on the button "menulogin"
    And  I set "<username>" to the inputfield "username"
    And I set "<password>" to the inputfield "password"
    And I click on the button "btnLogin"
    And I waiting for loading 2 seconds
    Then I expect that a text "Login failed! Please ensure the username and password are valid." on this page
    Examples:
      | username      | password           |
      | Hoke          | ThisIsNotAPassword |



  @Login-03
        Scenario: Check Login Failed because username is empty
          And user is on "login" page
          When I click on the button "btntoggle"
          And I click on the button "menulogin"
          And  I set "<username>" to the inputfield "username"
          And I set "<password>" to the inputfield "password"
          And I click on the button "btnLogin"
          And I waiting for loading 2 seconds
          Then I expect that a text "Login failed! Please ensure the username and password are valid." on this page
          Examples:
            | username      | password           |
            |               | ThisIsNotAPassword |


  @Login-04
        Scenario: Check Login Failed because Password is empty
          And user is on "login" page
          When I click on the button "btntoggle"
          And I click on the button "menulogin"
          And  I set "<username>" to the inputfield "username"
          And I set "<password>" to the inputfield "password"
          And I click on the button "btnLogin"
          And I waiting for loading 2 seconds
          Then I expect that a text "Login failed! Please ensure the username and password are valid." on this page
          Examples:
            | username      | password           |
            | John Doe      |                    |

  @Login-05
        Scenario: Check Login Failed because username and password are empty
          And user is on "login" page
          When I click on the button "btntoggle"
          And I click on the button "menulogin"
          And  I set "<username>" to the inputfield "username"
          And I set "<password>" to the inputfield "password"
          And I click on the button "btnLogin"
          And I waiting for loading 2 seconds
          Then I expect that a text "Login failed! Please ensure the username and password are valid." on this page
          Examples:
            | username      | password           |
            |               |                    |
  @Login-06
        Scenario: Logout Succses
          And user is on "login" page
          When I click on the button "btntoggle"
          And I click on the button "menulogin"
          And  I set "<username>" to the inputfield "username"
          And I set "<password>" to the inputfield "password"
          And I click on the button "btnLogin"
          And I waiting for loading 2 seconds
          Then I expect that a text "Make Appointment" on this page
         And I click on the button "btntoggle"
         And I click on the button "btnlogout"
         Then I expect that a text "We Care About Your Health" on this page

         Examples:
            | username      | password           |
            | John Doe      | ThisIsNotAPassword |
