@filter
  Feature: Filter

    Background:
      Given AWS SNS client

    Scenario: Filter
      Given I create a subscription "subscription1"
      When I publish message "message" to topic "topic"
      And I tag "message" with "cluster"
      Then send message to "queue" with "cluster"

      ???

