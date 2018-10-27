Feature: Test the winning condition when both player have equal hands.
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
	And Player holds RoyalFlush
	And AIP holds RoyalFlush

Scenario: AI Player have Spade Royal flush while player have heart royal flush
  Covered case: Not ordered royal flush, Spade royal flush, Heart royal flush, if the hand rank is same then use color to decide winner
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
	And Player holds RoyalFlush
	And AIP holds RoyalFlush