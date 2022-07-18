Feature: Validate Acadin Hotel Login Page

  Scenario Outline: Validate The Login Page With Valid Credentials
    Given User is On Login Page
    When User given a Valid Login "<Username>" ,"<Password>"
    And User Should Verify You Are Succesfully Login and Verify The Message "Hello praveenkmr!"

    Examples: 
      | Username   | Password |
      | praveenkmr | 12345678 |

  Scenario Outline: Validate The Login Page With Valid Credentials and Use Enter Key
    Given User is On Login Page
    When User given a Valid Login "<Username>" , "<Password>"
    Then User Should Verify You Are Succesfully Login and Verify The Message "Hello praveenkmr!"

    Examples: 
      | Username   | Password |
      | praveenkmr | 12345678 |

  Scenario Outline: Validate The Login Page With Invalid Credentials
    Given User is On Login Page
    When User given a Valid Login "<Username>" ,"<Password>"
    Then User should Check The Error Message Contains "Ivalid Login Details or Your Password Might Have Expired"

    Examples: 
      | Username  | Password |
      | praveenkm |  1234567 |
