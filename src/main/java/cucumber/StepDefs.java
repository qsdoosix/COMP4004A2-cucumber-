package cucumber;

import common.Poker;
import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;

public class StepDefs {
	protected common.Poker game = new Poker();
	@Given("^AIP have CA$")
	public void aip_have_CA() throws Exception {
		game.givecardAIP('C', 1);
	}

	@Given("^AIP have CK$")
	public void aip_have_CK() throws Exception {
		game.givecardAIP('C', 13);
	}

	@Given("^AIP have CQ$")
	public void aip_have_CQ() throws Exception {
		game.givecardAIP('C', 12);
	}

	@Given("^AIP have CJ$")
	public void aip_have_CJ() throws Exception {
		game.givecardAIP('C', 11);
	}

	@Given("^AIP have C(\\d+)$")
	public void aip_have_C(int arg1) throws Exception {
		game.givecardAIP('C', 10);
	}
	

	@When("^Player have DA$")
	public void player_have_DA() throws Exception {
		game.givecardP('D', 1);
	}

	@When("^Player have DK$")
	public void player_have_DK() throws Exception {
		game.givecardP('D', 13);
	}

	@When("^Player have DQ$")
	public void player_have_DQ() throws Exception {
		game.givecardP('D', 12);
	}
	
	@When("^Player have DJ$")
	public void player_have_DJ() throws Exception {
		game.givecardP('D', 11);
	}

	@When("^Player have D(\\d+)$")
	public void player_have_D(int arg1) throws Exception {
		game.givecardP('D', 10);
	}
}
