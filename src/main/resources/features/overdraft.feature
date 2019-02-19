Feature: withdraw
    As a customer
    I want to withdraw from my account using ATM

Scenario: Withdraw amount more than balance with non overdraft
    Given a customer with id 1 and pin 111 with overdraft 0 and balance 200 exists
    And I login to ATM with id 1 and pin 111
    When I overdraw 300 from ATM
    Then my account balance is 200

Scenario: Withdraw amount more than balance with overdraft
    Given a customer with id 1 and pin 111 with overdraft 100 and balance 200 exists
    And I login to ATM with id 1 and pin 111
    When I withdraw 250 from ATM
    Then my account balance is -50
