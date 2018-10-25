Feature: Test the correctness of poker game program about detecting the royal flush

  Scenario: AI Player have A,K,Q,J,10 in same color
    Given AIP have CA
    And AIP have CK
    And AIP have CQ
    And AIP have CJ
    And AIP have C10
    When Player have D10
    And Player have DJ
    And Player have DQ
    And Player have DK
    And Player have DA
    Then I validate the outcomes
