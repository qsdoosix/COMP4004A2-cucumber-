Feature: To test about straight flush

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
	
	Scenario: Player have Straight flush and AIP have 4 of a kind
Covers: detecting straight flush with 2 gap, detecting straight flush not in order, Straight flush beats 4 of a kind
	    Given  AIP have H10
    And AIP have S10
    And AIP have C10
    And AIP have D10
    And AIP have H9
    When Player have C9
    And Player have CK
    And Player have C10
    And Player have CQ
    And Player have CJ
    Then Player should win
	And Player holds StraightFlush
	And AIP holds FourOfAKind
	
		Scenario: Player have Straight flush and AIP have Full house
Covers: detecting straight flush with 2 gap, detecting straight flush not in order, Straight flush beats 4 of a kind
	    Given  AIP have H10
    And AIP have S10
    And AIP have C10
    And AIP have D10
    And AIP have H9
    When Player have C9
    And Player have CK
    And Player have C10
    And Player have CQ
    And Player have CJ
    Then Player should win
	And Player holds StraightFlush
	And AIP holds FourOfAKind