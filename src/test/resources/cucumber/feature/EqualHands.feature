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
	
	
Scenario: Player have Straight flush in lower color(Heart is smaller than spade) but larger number than AIP's
Covers: detecting straight flush in reverse order (normal order is tested in Royal Flush test), detecting straight flush with 1 gap, decide winner by the number
    Given  AIP have S6
    And AIP have S5
    And AIP have S4
    And AIP have S3
    And AIP have S2
    When Player have H7
    And Player have H9
    And Player have HJ
    And Player have H8
    And Player have H10
    Then Player should win
	And Player holds StraightFlush
	And AIP holds StraightFlush
	
Scenario: Player have Straight flush in same number but smaller color than AIP's
Covers: detecting straight flush with 2~3 gap, detecting straight flush not in order, decide winner by the Color when number is same
	    Given  AIP have H7
    And AIP have H10
    And AIP have H8
    And AIP have HJ
    And AIP have H9
    When Player have D10
    And Player have D7
    And Player have D9
    And Player have D8
    And Player have DJ
    Then AIP should win
	And Player holds StraightFlush
	And AIP holds StraightFlush