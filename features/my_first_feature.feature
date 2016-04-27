Feature: My First Feature

#  Scenario: My First Scenario
#    When I navigate to the webapp
#    And I view details
#    And I click on the adopt button
#    And I check the button "with message"
#    And I complete the adoption form
#    Then I should see "Thank you for adopting a puppy"
#
#  Scenario: My Second Scenario
#    When I navigate to the webapp
#    And I view details
#    And I click on the adopt button
#    And I check the button "without message"
#    And I complete the adoption form
#    Then I should see ""

  Scenario Outline: My third Scenarioduslp
    When I navigate to the webapp
    And I view details
    And I click on the adopt button
    And I check the button "<button_type>"
    And I complete the adoption form
    Then I should see the text "<message>"
    Examples:
      | button_type     | message                        |
      | with message    | Thank you for adopting a puppy |
      | without message |                                |

