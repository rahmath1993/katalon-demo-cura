@runner
@MakeAppointment
Feature: Make Appointment

        Background: Login Success
            Given I open the url
              And user is on "login" page
             When I click on the button "btntoggle"
              And I click on the button "menulogin"
              And I success login on the website application
                  | username | password           |
                  | John Doe | ThisIsNotAPassword |
              And I waiting for loading 2 seconds
              And I click on the button "btnLogin"
              And I waiting for loading 2 seconds
             Then I expect that a text "Make Appointment" on this page


        @MakeAppointment-01
        Scenario:  Check succes submit Make Appointment
            Given user is on "makeappointment" page
              And I waiting for loading 2 seconds
              And I click on the button "checkbox"
              And I click on the button "healtprogram1"
              And I click on the button "choosedate"
              And I click on the button "date"
              And  I set "<coment>" to the inputfield "coment"
              And I click on the button "btnbook"
              And I waiting for loading 2 seconds
             Then I expect that a text "Please be informed that your appointment has been booked as following:" on this page

        Examples:
                  | coment              |
                  | Semoga Lekas Sembuh |

        @MakeAppointment-02
        Scenario:  Check failed submit Make Appointment
            Given user is on "makeappointment" page
              And I waiting for loading 2 seconds
              And I click on the button "checkbox"
              And I click on the button "healtprogram1"
              And I click on the button "btnbook"
              And I waiting for loading 2 seconds
             Then I expect that a text "Visit Date (Required)" on this page

