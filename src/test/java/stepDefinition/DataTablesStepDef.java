package stepDefinition;



import java.util.ArrayList;
import java.util.List;

import cucumber.api.DataTable;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class DataTablesStepDef {
	private List<List<String>> board;
	
	@Given("^a board like this:$")
	public void a_board_like_this(DataTable table) throws Throwable {
	    this.board = new ArrayList<>(); 
	    		for (List<String> row : table.raw()) {
					this.board.add(new ArrayList<>(row));
				}
	   
	}

	@When("^player x plays in row (\\d+), column (\\d+)$")
	public void player_x_plays_in_row_column(int row, int col) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    board.get(row).set(col,"x");
	}

	@Then("^the board should look like this:$")
	public void the_board_should_look_like_this(DataTable expectedTable) throws Throwable {
	    expectedTable.diff(board);
	    
	}
}
