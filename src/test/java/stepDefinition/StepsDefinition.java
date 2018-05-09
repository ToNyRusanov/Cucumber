package stepDefinition;

import static org.junit.Assert.assertEquals;

import java.text.DecimalFormat;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
;

public class StepsDefinition {
	double bananaPrice = 0;
	double bananaCountPrice= 0;
	double orangeCountPrice = 0;
	double appleCountPrice = 0;
	double orangePrice = 0;
	double applePrice = 0;
	
	
	@Given("^the price of a (.*) is (.*)lv$")
	public void the_price_of_a_is_lv(String fruit , double price)  {
	   switch (fruit) {
	case "banana":
		bananaPrice = price;
		break;
	case "orange":
		orangePrice = price;
		break;
	case "apple":
		applePrice = price;
		break;
	default:
		break;
	}
	    
	}

	@When("^I checkout (.*) (.*)$")
	public void i_checkout_(int count, String fruit)  {
	   switch (fruit) {
	   case "banana":
			bananaCountPrice = count * bananaPrice;
			break;
		case "orange":
			orangeCountPrice = count * orangePrice;
			break;
		case "apple":
			appleCountPrice = count * applePrice;
			break;
		default:
			break;
		}
	    
	}

	@Then("^the total price should be (.*)$")
	public void the_total_price_should_be(double total)  {
		DecimalFormat format = new DecimalFormat(".##");
		String result1 =format.format(bananaCountPrice + orangeCountPrice + appleCountPrice);
		double result = Double.parseDouble(result1);
	   assertEquals(total, result,0);
	    
	}
	
	

}
