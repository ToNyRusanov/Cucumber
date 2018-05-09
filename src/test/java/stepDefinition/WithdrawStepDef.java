package stepDefinition;

import static org.junit.Assert.assertEquals;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class WithdrawStepDef {
	private int balance = 0;
	private int withdraw = 0;
	private int result = 0;
	
	@Given("^my bank account balance is (.*)$")
	public void my_bank_account_balance_is(int balance) throws Throwable {
		this.balance = balance;
	    
	}

	@When("^I want to withdraw (.*)$")
	public void i_want_to_withdraw(int withdraw) throws Throwable {
	    this.withdraw = withdraw;
	}

	@Then("^I should receive (.*)$")
	public void i_should_receive(String outcome) throws Throwable {
		String message = "receive ";
		int res = withdraw;
	   if (balance - res >= 0) {
		  message += res;
		  assertEquals(outcome, message);
	}else {
		message = "an error message";
		assertEquals(outcome, message);
	}
	}

	@Then("^my balance should be (.*)$")
	public void my_balance_should_be(int remaining) throws Throwable {
	    result = balance - withdraw;
	    if(result >= 0) {
	    assertEquals(remaining, result);
	}else {
		result = balance;
		assertEquals(remaining, result);
	}
	    }
	
	
}
