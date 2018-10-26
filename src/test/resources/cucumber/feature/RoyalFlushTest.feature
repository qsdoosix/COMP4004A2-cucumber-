Feature: Test the correctness of poker game program about detecting the royal flush

  Scenario: AI Player have Club royal flush in order while player have Diamond royal flush in reversed order
  Covered case: Ordered royal flush, Club royal flush, Diamond royal flush, reversed order royal flush, if the hand rank is same then use color to decide winner
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

  Scenario: AI Player have Spade Royal flush while player have heart royal flush
  Covered case: Not ordered royal flush, Spade royal flush, Heart royal flush if the hand rank is same then use color to decide winner
    Given  AIP have SK
    And AIP have SQ
    And AIP have SJ
    And AIP have S10
    And AIP have SA
    When Player have HA
    And Player have H10
    And Player have HJ
    And Player have HQ
    And Player have HK
    Then AIP should win
    
    
  Scenario: AI Player have Royal flush and player have straight flush
  Covered case: royal flush beats straight flush
    Given  AIP have HQ
    And AIP have HJ
    And AIP have H10
    And AIP have HA
    And AIP have HK
    When Player have S4
    And Player have S8
    And Player have S6
    And Player have S5
    And Player have S7
    Then AIP should win