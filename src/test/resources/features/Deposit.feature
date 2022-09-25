Feature: withdraw
    As a customer
    I want to deposit to my account

Background:
    Given a customer with id 1 and pin 111 with balance 200 exists
    When I login to ATM with id 1 and pin 111

Scenario: Withdraw amount more than balance
    When I deposit 5000 from ATM
    Then my account balance is 5200
