@filter
Feature: Filter

  Background:
    Given AWS SNS client
    Given AWS SQS client

  Scenario: Filter
    Given I publish "message" to topic "local-catalog-updates" with attributes:
      | Name       | Data Type | String Value |
      | cluster    | String    | c1           |
      | priority   | String    | high         |
    When I get subscription attributes for "subscription"
    And I see attribute "FilterPolicy" with value "JSON"
    Then I should see "c1" in queue "queue"
    Then The publish request should be successful