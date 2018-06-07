package runners;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(features = "src\\test\\resources\\features", 
				glue = "stepDefinition",
				tags = "@test",
				plugin = {"pretty","html:target/cucumber-report"})
public class RunnerTest {

}
