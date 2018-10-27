Feature: Test the correctness of poker game program about detecting the royal flush and comparing it with other hands

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
    
    
Scenario: AI Player have Royal flush and player have straight flush
  Covered case: royal flush beats straight flush, Not ordered royal flush,Ordered Straight flush
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
	And Player holds StraightFlush
	And AIP holds RoyalFlush
	
Scenario: Player have Royal flush and AI player have FullHouse
  Covered case: royal flush beats Full house, Not ordered royal flush,3+2 Full house
  At this moment, Every card has been placed in every place of hand.
    Given  AIP have H3
    And AIP have D3
    And AIP have C3
    And AIP have H5
    And AIP have D5
    When Player have SJ
    And Player have S10
    And Player have SA
    And Player have SK
    And Player have SQ
    Then Player should win
	And Player holds RoyalFlush
	And AIP holds FullHouse

Scenario: Player have Royal flush and AI player have 4 of a kind
  Covered case: royal flush beats 4 of a kind, royal flush that any two adjacent cards are not in order(i.e. |a[i]-a[i+1]|>1), 4 of a kind
    Given  AIP have H4
    And AIP have D4
    And AIP have C4
    And AIP have S4
    And AIP have D5
    When Player have SK
    And Player have SJ
    And Player have SA
    And Player have SQ
    And Player have S10
    Then Player should win
	And Player holds RoyalFlush
	And AIP holds FourOFAKind

Scenario: Player have Royal flush and AI player have Straight
  Covered case: royal flush beats 3 of a kind, royal flush that have gap between two cards, Straight in order
    Given  AIP have H4
    And AIP have D5
    And AIP have C6
    And AIP have S7
    And AIP have D8
    When Player have C10
    And Player have CK
    And Player have CJ
    And Player have CQ
    And Player have CA
    Then Player should win
	And Player holds RoyalFlush
	And AIP holds Straight
	
Scenario: Player have Royal flush and AI player have Flush
  Covered case: royal flush beats Straight. Royal flush, Straight in order
    Given  AIP have H3
    And AIP have H5
    And AIP have H7
    And AIP have H8
    And AIP have H10
    When Player have D10
    And Player have DQ
    And Player have DA
    And Player have DK
    And Player have DJ
    Then Player should win
	And Player holds RoyalFlush
	And AIP holds Flush
	
Scenario: Player have Royal flush and AI player have 3 of a kind
  Covered case: royal flush beats 3 of a kind, royal flush that have big gap between two cards, 3 of a kind with 3+1+1
    Given  AIP have H4
    And AIP have D4
    And AIP have C4
    And AIP have S7
    And AIP have D5
    When Player have C10
    And Player have CK
    And Player have CJ
    And Player have CA
    And Player have CQ
    Then Player should win
	And Player holds RoyalFlush
	And AIP holds ThreeOFAKind
	
Scenario: Player have Royal flush and AI player have two pairs
  Covered case: royal flush beats two pair, Two pairs with 2+2+1
    Given  AIP have H4
    And AIP have D4
    And AIP have C7
    And AIP have S7
    And AIP have D9
    When Player have DQ
    And Player have DK
    And Player have DJ
    And Player have D10
    And Player have DA
    Then Player should win
	And Player holds RoyalFlush
	And AIP holds TwoPairs
	
	Scenario: Player have Royal flush and AI player have one pair
  Covered case: royal flush beats pair, Two pairs with 2+1+1+1
    Given  AIP have H4
    And AIP have D4
    And AIP have C7
    And AIP have S9
    And AIP have DJ
    When Player have DQ
    And Player have DK
    And Player have DJ
    And Player have D10
    And Player have DA
    Then Player should win
	And Player holds RoyalFlush
	And AIP holds Pair
	
Scenario: Player have Royal flush and AI player have only single card
  Covered case: royal flush beats single card, 5 single cards
    Given  AIP have HA
    And AIP have D4
    And AIP have C7
    And AIP have S9
    And AIP have DJ
    When Player have DQ
    And Player have DK
    And Player have DJ
    And Player have D10
    And Player have DA
    Then Player should win
	And Player holds RoyalFlush
	And AIP holds Single