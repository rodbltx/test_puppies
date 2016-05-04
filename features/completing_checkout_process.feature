Feature: Completing the checkout process

  The final step of the checkout process is to
  collect some information about the adopter

  Background:
    Given I am on the puppy adoption site

#  Scenario: Name is required when checking out
#    When I attempt to checkout for puppy "Hanna", without a "name"
#    Then I should see the error message "Name can't be blank"
##
#  Scenario: Address is required when checking out
#    When I attempt to checkout for puppy "Hanna", without an "address"
#    Then I should see the error message "Address can't be blank"

  Scenario Outline: Fields validation on check out
    When I attempt to checkout for puppy "<puppy_name>", without a "<field>"
    Then I should see the error message "<field> can't be blank"
    Examples:
      | puppy_name | field   |
      | Brook      | Name    |
      | Hanna      | Address |

#  Scenario: Adopter should be presented with payment options
#    When I navigate to the checkout page
#    Then I should see the following payment options:
#      | pay_type       |
#      | Purchase order |
#      | Credit card    |
#      | Check          |
#
#  Scenario: Thank you message should be displayed when adoption is complete
#    When I complete the adoption of a puppy
#    Then I should see the text "Thank you for adopting a puppy"