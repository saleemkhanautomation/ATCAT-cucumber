package RTR_BHGE_Runner;

import org.junit.AfterClass;
import org.junit.runner.RunWith;

import com.cucumber.listener.Reporter;


import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)

@CucumberOptions(  features ={ "RTR_BHGE_SIT"},
   glue = { "RTR_BHGE_StepDefinitions" },
	plugin= {"html:target/html", "json:target/cucumber.json","com.cucumber.listener.ExtentCucumberFormatter:output/report.html"},
	tags= {"@smoke"}
)

public class RTRBHGE_Runner  {
	@AfterClass
	public static void teardown() {
		Reporter.setSystemInfo("user", System.getProperty("user.name"));
		Reporter.setSystemInfo("Selenium Version", "3.4.0");
		Reporter.setSystemInfo("os", "Windows 10");
		Reporter.setTestRunnerOutput("Overall test execution report");
	}
}