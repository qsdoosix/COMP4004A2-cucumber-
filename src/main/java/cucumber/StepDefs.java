package cucumber;

import static org.junit.Assert.assertEquals;

import common.Poker;
import cucumber.api.PendingException;
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

}
