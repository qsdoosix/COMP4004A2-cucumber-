Feature: Test the winning condition when both player have equal hands.

  Scenario: 1 AI Player have Club royal flush in order while player have Diamond royal flush in reversed order
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

  Scenario: 2 AI Player have Spade Royal flush while player have heart royal flush
    Given AIP have SK
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

  Scenario: 3 Player have Straight flush in lower color(Heart is smaller than spade) but larger number than AIP's
    Given AIP have S6
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

  Scenario: 4 Player have Straight flush in same number but smaller color than AIP's
    Given AIP have H7
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

  Scenario: 5 Player have 4 of a kind in smaller number than AIP
    Given AIP have H5
    And AIP have D5
    And AIP have C5
    And AIP have S5
    And AIP have H9
    When Player have H6
    And Player have D4
    And Player have C4
    And Player have S4
    And Player have H4
    Then AIP should win
    And Player holds FourOfAKind
    And AIP holds FourOfAKind
