Feature: Test the correctness of poker game program about detecting the royal flush

  Scenario: AI Player have A,K,Q,J,10 in same color
    Given AIP have CA
    And AIP have CK
    And AIP have CQ
    And AIP have CJ
    And AIP have C10
    When I complete action
    Then I validate the outcomes
