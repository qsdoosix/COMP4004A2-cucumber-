package cucumber;

import static org.junit.Assert.assertEquals;

import common.Poker;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class StepDefs {
	protected common.Poker game = new Poker();
	@Given("^AIP have ([^\"]*)")
	public void Give_AIP(String card) throws Exception {
		game.givecardAIP(game.cardcreator(card));
	}
	@When("^Player have ([^\"]*)")
	public void Give_Player(String card) throws Exception {
		game.givecardP(game.cardcreator(card));
	}

	@Then("^AIP should win$")
	public void aip_should_win() throws Exception {
		game.displayHand(false);
		game.displayHand(true);
		game.compareHand();
		assertEquals(game.winner,1);
	}
	
	@Then("^Player should win$")
	public void player_should_win() throws Exception {
		game.displayHand(false);
		game.displayHand(true);
		game.compareHand();
		assertEquals(game.winner,0);
	}

	@Then("^Player holds ([^\"]*)")
	public void Player_Has(String hand) throws Exception {
		if(hand.equalsIgnoreCase("Royalflush")) {
			assertEquals(game.isRoyalFlush(game.player_hand),true);
			
		}else if(hand.equalsIgnoreCase("StraightFlush")) {
			assertEquals(game.isStraightFlush((game.player_hand)),true);
		}else if(hand.equalsIgnoreCase("Straight")) {
			assertEquals(game.isStraight((game.player_hand)),true);
		}else if(hand.equalsIgnoreCase("Flush")) {
			assertEquals(game.isFlush((game.player_hand)),true);
		}else if(hand.equalsIgnoreCase("FourOfAKind")) {
			assertEquals(game.is4oK((game.player_hand)),true);
		}else if(hand.equalsIgnoreCase("FullHouse")) {
			assertEquals(game.isFHouse((game.player_hand)),true);
		}else if(hand.equalsIgnoreCase("ThreeOfAKind")) {
			assertEquals(game.is3oK((game.player_hand)),true);
		}else if(hand.equalsIgnoreCase("TwoPair")) {
			assertEquals(game.is2Pair((game.player_hand)),true);
		}else if(hand.equalsIgnoreCase("Pair")) {
			assertEquals(game.isPair((game.player_hand)),true);
		}else {
			assertEquals(hand.equalsIgnoreCase("Single"),true);
		}
	}
	@Then("^AIP holds ([^\"]*)")
	public void AIP_Has(String hand) throws Exception {
		if(hand.equalsIgnoreCase("Royalflush")) {
			assertEquals(game.isRoyalFlush(game.enemy_hand),true);
			
		}else if(hand.equalsIgnoreCase("StraightFlush")) {
			assertEquals(game.isStraightFlush((game.enemy_hand)),true);
		}else if(hand.equalsIgnoreCase("Straight")) {
			assertEquals(game.isStraight((game.enemy_hand)),true);
		}else if(hand.equalsIgnoreCase("Flush")) {
			assertEquals(game.isFlush((game.enemy_hand)),true);
		}else if(hand.equalsIgnoreCase("FourOfAKind")) {
			assertEquals(game.is4oK((game.enemy_hand)),true);
		}else if(hand.equalsIgnoreCase("FullHouse")) {
			assertEquals(game.isFHouse((game.enemy_hand)),true);
		}else if(hand.equalsIgnoreCase("ThreeOfAKind")) {
			assertEquals(game.is3oK((game.enemy_hand)),true);
		}else if(hand.equalsIgnoreCase("TwoPairs")) {
			assertEquals(game.is2Pair((game.enemy_hand)),true);
		}else if(hand.equalsIgnoreCase("Pair")) {
			assertEquals(game.isPair((game.enemy_hand)),true);
		}else {
			assertEquals(hand.equalsIgnoreCase("Single"),true);
		}
	}
}
