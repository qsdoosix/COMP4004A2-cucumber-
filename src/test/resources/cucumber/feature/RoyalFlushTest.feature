Feature: Test the correctness of poker game program about detecting the royal flush

  Scenario: AI Player have A,K,Q,J,10 in Club while player have 10,J,Q,K,A in Diamond
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
    Then Player should win

  Scenario: AI Player have K,Q,J,10,A in Heart while player have A,10,J,Q,K in Spade
    Given  AIP have HK
    And AIP have HQ
    And AIP have HJ
    And AIP have H10
    And AIP have HA
    When Player have SA
    And Player have S10
    And Player have SJ
    And Player have SQ
    And Player have SK
    Then Player should win