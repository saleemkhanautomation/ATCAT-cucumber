package RTR_BHGE_StepDefinitions;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.By;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;

import com.cucumber.listener.Reporter;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import methods.IncognitoLogin;

public class RTR_BHGE_StepDefinitions extends IncognitoLogin {
    WebDriver driver;
    public static Properties P = new Properties();
    //	public static Logger logger = Logger.getLogger(WebConnector.class);
    public static String ReportExtent;

    /*************************************** RTR BHGE ***************************************/
    @Given("^Open browser in incognito and navigate to \"([^\"]*)\"$")
    public void open_browser_in_incognito(String url) throws Throwable {
	IncognitoLogin.drive(url);
	//ATCATSpecificMethods.Open_in_Incognito(url);
	//Thread.sleep(10000);

	/* driver.findElement(By.xpath("//*[@name='loginfmt']")).sendKeys("mohd.saleem.khan@ds.dev.accenture.com");
	 Thread.sleep(10000);
	 driver.findElement(By.xpath("//*[@id='idSIButton9']")).click();
	 Thread.sleep(10000);
	 driver.findElement(By.xpath("//*[@name='Password']")).sendKeys("KhanKhan123!");
	 Thread.sleep(10000);
	 driver.findElement(By.xpath("//*[@id='submitButton']")).click();
	 Thread.sleep(20000);
	 driver.findElement(By.linkText("Don't have a security code?")).click();
	 Thread.sleep(80000);
	 
	 driver.findElement(By.id("vipSubmitOTP")).click();
	;*/

    }

    @Then("^pass your \"([^\"]*)\" in \"([^\"]*)\"$")
    public void pass_your_in(String arg1, String arg2) throws Throwable {
	IncognitoLogin.type(arg1, arg2);

	//ATCATSpecificMethods.passing_email(arg1, arg2);

    }

    @Given("^Navigate to \"([^\\\"]*)\"$")
    public void navigate_to_PasswordPage(String xapth) throws Throwable {
	IncognitoLogin.click(xapth);
	Thread.sleep(5000);
	//Basic.Click("PasswordPage");
    }
    /*@Given("^pass your password$")
    public void pass_your_password() throws Throwable {
      Basic.Type_Content1("passwordpath","password");
    }*/

    @Given("^I wait for \"([^\"]*)\" seconds$")
    public void i_wait_for_seconds(String arg1) throws Throwable {
	IncognitoLogin.wait(arg1);
    }

    @Given("^I refresh the page$")
    public void I_refresh_the_page() throws Throwable {
	IncognitoLogin.refreshPage();
    }

    /******************************************* Naganand's Step definition starts *****************************************/
    @Then("^select the value \"([^\"]*)\" from the dropdown \"([^\"]*)\"$")
    public void select_the_value_from_the_dropdown(String value, String dropdown) throws Throwable {
	IncognitoLogin.Accessingdropdown(dropdown, value);
    }

    @Then("^I verify whether the value \"([^\"]*)\" is present in the \"([^\"]*)\"$")
    public void i_verify_whether_the_value_is_present_in_the(String value, String xpath) throws Throwable {
	IncognitoLogin.ValueVerify(xpath, value);
    }

    @Then("^I verify whether the element \"([^\"]*)\" is there in the location \"([^\"]*)\"$")
    public void i_verify_whether_the_element_is_there_in_the_location(String value, String xpath) throws Throwable {
	IncognitoLogin.ReconGroupgetText(xpath, value);
    }

    @Then("^I clear the field \"([^\"]*)\"$")
    public void i_clear_the_field(String xpath) throws Throwable {
	IncognitoLogin.Clear(xpath);
    }

    @Then("^I select the end day based on current month in the path \"([^\"]*)\"$")
    public void i_select_the_end_day_based_on_current_month_in_the_path(String xpath) throws Throwable {
	IncognitoLogin.mth(xpath);
    }

    @Then("^I will verify whether the file \"([^\"]*)\" has been downloaded after clicking on the link \"([^\"]*)\"$")
    public void i_will_verify_whether_the_file_has_been_downloaded_after_clicking_on_the_link(String filename,
	    String xpath) throws Throwable {
	IncognitoLogin.verifyDownloadWithFileName(filename, xpath);
    }

    @Given("^I will verify the header columns in the \"([^\"]*)\" page from \"([^\"]*)\" row$")
    public void i_will_verify_the_header_columns_in_the_page_from_row(String pagename, String rowname)
	    throws Throwable {
	IncognitoLogin.headerColumns(pagename, rowname);
    }

    @Given("^Run AutoIT FileUpload1$")
    public void run_AutoIT_FileUpload1() throws Throwable {
	IncognitoLogin.autoIT_UploadFile1();
    }

    @Given("^Run AutoIT FileUpload2$")
    public void run_AutoIT_FileUpload2() throws Throwable {
	IncognitoLogin.autoIT_UploadFile2();
    }

    @Then("^Run AutoIT ReconGroupBulkUpload$")
    public void run_AutoIT_ReconGroupBulkUpload() throws Throwable {
	IncognitoLogin.reconGroupBulkUpload();
    }

    @Then("^Run AutoIT ReconGroupBulkUpdatePreparers$")
    public void run_AutoIT_ReconGroupBulkUpdatePreparers() throws Throwable {
	IncognitoLogin.reconGroupBulkUpdatePreparers();
    }

    @Then("^I will search for the \"([^\"]*)\" in the \"([^\"]*)\"$")
    public void i_will_search_for_the_in_the(String id, String table) throws Throwable {
	IncognitoLogin.table(id, table);
    }

    @Then("^I will find out which flow it is$")
    public void i_will_find_out_which_flow_it_is() throws Throwable {
	IncognitoLogin.flowNum();
    }

    @Then("^I will select \"([^\"]*)\" from Action dropdown$")
    public void i_will_select_from_Action_dropdown(String value) throws Throwable {
	int i = IncognitoLogin.flowNum();
	IncognitoLogin.Accessingdropdown1("//select[@id='actionList_" + i + "']", value);
    }

    @Then("^I will select \"([^\"]*)\" from LeftDataSet dropdown$")
    public void i_will_select_from_LeftDataSet_dropdown(String value) throws Throwable {
	int i = IncognitoLogin.flowNum();
	IncognitoLogin.Accessingdropdown1("//select[@id='leftDataset_" + i + "']", value);
    }

    @Then("^I will select \"([^\"]*)\" from LeftRecords dropdown$")
    public void i_will_select_from_LeftRecords_dropdown(String value) throws Throwable {
	int i = IncognitoLogin.flowNum();
	IncognitoLogin.Accessingdropdown1("//select[@id='leftRecords_" + i + "']", value);
    }

    @Then("^I will select \"([^\"]*)\" from RightDataSet dropdown$")
    public void i_will_select_from_RightDataSet_dropdown(String value) throws Throwable {
	int i = IncognitoLogin.flowNum();
	IncognitoLogin.Accessingdropdown1("//*[@id='rightDataset_" + i + "']/div[2]/select", value);
    }

    @Then("^I will select \"([^\"]*)\" from RightRecords dropdown$")
    public void i_will_select_from_RightRecords_dropdown(String value) throws Throwable {
	int i = IncognitoLogin.flowNum();
	IncognitoLogin.Accessingdropdown1("//*[@id='rightRecords_" + i + "']/div[2]/select", value);
    }

    @Then("^I will click on the View Rules link$")
    public void i_will_click_on_the_View_Rules_link() throws Throwable {
	int i = IncognitoLogin.flowNum();
	driver1.findElement(By.xpath("//*[@id='drag_" + i + "']/div[2]/div[2]/div[7]/div/span")).click();
    }

    @Given("^I pass the validation name \"([^\"]*)\" to be deleted from the validation table$")
    public void i_pass_the_validation_name_to_be_deleted_from_the_validation_table(String value) throws Throwable {
	IncognitoLogin.validationdeletiontable(value);
    }

    @Given("^I pass the validation name \"([^\"]*)\" that has to be updated from the validation table$")
    public void i_pass_the_validation_name_that_has_to_be_updated_from_the_validation_table(String value)
	    throws Throwable {
	IncognitoLogin.validationupdationtable(value);
    }

    @Given("^I pass the validation name \"([^\"]*)\" whose Configure checklist has to be selected from the validation table$")
    public void i_pass_the_validation_name_whose_Configure_checklist_has_to_be_selected_from_the_validation_table(
	    String value) throws Throwable {
	IncognitoLogin.validationconfigurechecklisttable(value);
    }

    @Given("^I pass the validation name \"([^\"]*)\" whose Configure datasets has to be selected from the validation table$")
    public void i_pass_the_validation_name_whose_Configure_datasets_has_to_be_selected_from_the_validation_table(
	    String value) throws Throwable {
	IncognitoLogin.validationconfiguredatasetstable(value);
    }

    @Then("^I will pass the values \"([^\"]*)\" that needs to be added as a checklist$")
    public void i_will_pass_the_values_that_needs_to_be_added_as_a_checklist(String value) throws Throwable {
	IncognitoLogin.validationchecklist(value);
    }

    @Then("^I will pass the values \"([^\"]*)\" that needs to be added as a datasets$")
    public void i_will_pass_the_values_that_needs_to_be_added_as_a_datasets(String value) throws Throwable {
	IncognitoLogin.validationdatasets(value);
    }

    @Then("^I change the number of rows value to \"([^\"]*)\" from the dropdown \"([^\"]*)\"$")
    public void i_change_the_number_of_rows_value_to_from_the_dropdown(String value, String xpath) throws Throwable {
	IncognitoLogin.Access_dropdown(xpath, value);
    }

    @Then("^I will pass the Recon Group \"([^\"]*)\" whose Preparer needs to be added$")
    public void i_will_pass_the_Recon_Group_whose_Preparer_needs_to_be_added(String value) throws Throwable {
	IncognitoLogin.recongrouptable(value);
    }

    @Then("^I click on \"([^\"]*)\" button in the sign field of First Match Settings$")
    public void i_click_on_button_in_the_sign_field_of_First_Match_Settings(String value) throws Throwable {
	IncognitoLogin.sign1(value);
    }

    @Then("^I click on \"([^\"]*)\" button in the sign field of Second Match Settings$")
    public void i_click_on_button_in_the_sign_field_of_Second_Match_Settings(String value) throws Throwable {
	IncognitoLogin.sign2(value);
    }

    @Then("^I click on \"([^\"]*)\" button in the sign field of Third Match Settings$")
    public void i_click_on_button_in_the_sign_field_of_Third_Match_Settings(String value) throws Throwable {
	IncognitoLogin.sign3(value);
    }

    @Then("^I click on \"([^\"]*)\" button in the First Record Variance$")
    public void i_click_on_button_in_the_First_Record_Variance(String value) throws Throwable {
	IncognitoLogin.recordvariance1(value);
    }

    @Then("^I click on \"([^\"]*)\" button in the Second Record Variance$")
    public void i_click_on_button_in_the_Second_Record_Variance(String value) throws Throwable {
	IncognitoLogin.recordvariance2(value);
    }

    @Then("^I click on \"([^\"]*)\" button in the Third Record Variance$")
    public void i_click_on_button_in_the_Third_Record_Variance(String value) throws Throwable {
	IncognitoLogin.recordvariance3(value);
    }

    @Then("^I upload the BHGE Accruals template$")
    public void i_upload_the_BHGE_Accruals_template() throws Throwable {
	IncognitoLogin.Accruals();
    }

    /******************************************* Naganand's Step definition ends *****************************************/

    /******************************************* Abdul's Step definition starts *****************************************/
    @Then("^I Verify if \"([^\"]*)\" Field is present$")
    public void i_Verify_if_Field_is_present(String arg1) throws Throwable {
	IncognitoLogin.verificationwebelement(arg1);
    }

    @Then("^I enter value \"([^\"]*)\" in \"([^\"]*)\" field$")
    public void i_enter_value_in_field(String arg1, String arg2) throws Throwable {
	IncognitoLogin.entervalueinfield(arg1, arg2);
    }

    @Then("^i close the browser$")
    public void i_close_the_browser() throws Throwable {
	IncognitoLogin.browserclose();

    }

    @Then("^I enter \"([^\"]*)\" in search and verify search result$")
    public void i_enter_in_search_and_verify_search_result(String arg1) throws Throwable {
	IncognitoLogin.searchverification(arg1);
    }

    @Then("^I verify Recon Group Type search$")
    public void i_verify_Recon_Group_Type_search() throws Throwable {
	IncognitoLogin.recongrouptypesearch();
    }

    @Then("^I Verify if Matching Comment is present$")
    public void i_Verify_if_Matching_Comment_is_present() throws Throwable {
	IncognitoLogin.matchingcommentverification();
    }

    @Then("^I verify if \"([^\"]*)\" is present in Sent for review$")
    public void i_verify_if_is_present_in_Sent_for_review(String arg1) throws Throwable {
	IncognitoLogin.sentforreviewverification(arg1);
    }

    @Then("^I verify if \"([^\"]*)\" record is present in Matched Items$")
    public void i_verify_if_record_is_present_in_Matched_Items(String arg1) throws Throwable {
	IncognitoLogin.matchedverification(arg1);
    }

    @Then("^I Click on \"([^\"]*)\"$")
    public void i_Click_on(String arg1) throws Throwable {
	IncognitoLogin.clickonwebelement(arg1);
    }

    @Then("^I Verify UnMatchButton functionality on \"([^\"]*)\" line amount$")
    public void i_Verify_UnMatchButton_functionality_on_line_amount(String arg1) throws Throwable {
	IncognitoLogin.unmatchbtnverification(arg1);
    }

    @Then("^I Verify dismiss button functionality$")
    public void i_Verify_dismiss_button_functionality() throws Throwable {
	IncognitoLogin.dismissbtnverification();
    }

    @Then("^I Verify match button functionality in suggested items tab$")
    public void i_Verify_match_button_functionality_in_suggested_items_tab() throws Throwable {
	IncognitoLogin.matchbtninsuggstntabverification();
    }

    @Then("^I Verify Update Classification Functionality$")
    public void i_Verify_Update_Classification_Functionality() throws Throwable {
	IncognitoLogin.updatefuncverification();
    }

    @Then("^I Verify Delete Classification Functionality$")
    public void i_Verify_Delete_Classification_Functionality() throws Throwable {
	IncognitoLogin.deletefuncverification();
    }

    @Then("^I Click on Match button and verify if it is working$")
    public void i_Click_on_Match_button_and_verify_if_it_is_working() throws Throwable {

	IncognitoLogin.matchbtnfuncverificationallitemstabs();
    }

    @Then("^I Verify Unmatch button functionality$")
    public void i_Verify_Unmatch_button_functionality() throws Throwable {
	IncognitoLogin.unmatchbtnverify();
    }

    /******************************************* Abdul's Step definition ends *****************************************/

    /******************************************* Saleems's Step definition starts *****************************************/

    @Then("^I type at \"([^\"]*)\" value \"([^\"]*)\"$")
    public void i_type_at_value(String arg1, String arg2) throws Throwable {
	IncognitoLogin.typeValue(arg1, arg2);
    }

    @Then("^I select at \"([^\"]*)\" value \"([^\"]*)\"$")
    public void i_select_at_value(String arg1, String arg2) throws Throwable {
	IncognitoLogin.selectValue(arg1, arg2);
    }

    @Then("^I upload the BHGE Excel sheet$")
    public void I_upload_the_BHGE_Excel_sheet() throws Throwable {
	IncognitoLogin.uploadBHGEExcel();
    }

    @Then("^I select DocumentType as \"([^\"]*)\" and \"([^\"]*)\"$")
    public void i_select_DocumentType_as_and(String arg1, String arg2) throws Throwable {
	IncognitoLogin.setAsDefault(arg1, arg2);
    }

    @Then("I check if it saved Successfully$")
    public void i_check_successfully() throws Throwable {
	IncognitoLogin.successSave();
    }

    @Then("^I upload the BHGE Excel sheet again$")
    public void I_upload_the_BHGE_Excel_sheet_again() throws Throwable {
	IncognitoLogin.uploadBHGEExcelBankStatement();
    }

    @Then("^I wait for element to be visible \"([^\"]*)\"$")
    public void i_wait_for_element_to_be_visible(String xapth) throws Throwable {
	IncognitoLogin.explicitWAIt(xapth);
    }

    @Then("I check if it Classification saved Successfully$")
    public void i_check_Classification_successfully() throws Throwable {
	IncognitoLogin.ClassificationsuccessSave();
    }

    @Then("^I search for \"([^\"]*)\" and \"([^\"]*)\"$")
    public void i_search_for_dataset(String arg1, String arg2) throws Throwable {
	IncognitoLogin.searchDataSet(arg1, arg2);

    }

    @Then("^I check \"([^\"]*)\" is enabled$")
    public void I_check_button_enabled(String xpath) throws Throwable {
	IncognitoLogin.Buttonenabled(xpath);
    }

    @Then("^I check \"([^\"]*)\" is present or not$")
    public void i_check_is_present_or_not(String recon) throws Throwable {
	IncognitoLogin.checkReconGroupPresent(recon);
    }

    @After
    public void tearDown(Scenario scenario) {

	/*if (scenario.isFailed()) {
	File scrFile = ((TakesScreenshot)driver).getScreenshotAs(OutputType.FILE);
	
	try {
	FileUtils.copyFile(scrFile, new File(System.getProperty("user.dir")+"Screenshot/Error1.jpg"));
	} */
	if (scenario.isFailed()) {
	    String screenshotName = scenario.getName().replaceAll(" ", "_");
	    try {
		TakesScreenshot ts = (TakesScreenshot) driver1;
		File sourcePath = ts.getScreenshotAs(OutputType.FILE);
		String timestamp = new SimpleDateFormat("yyyy_MM_dd__hh_mm_ss").format(new Date());
		File destinationPath = new File(System.getProperty("user.dir")
			+ "\\target\\cucumber-reports\\screenshots\\" + screenshotName + "_" + timestamp + ".png");
		FileUtils.copyFile(sourcePath, destinationPath);
		Reporter.addScreenCaptureFromPath(destinationPath.toString());
	    } catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	    }
	}
    }

    /******************************************* Saleems's Step definition ends *****************************************/

    /******************* Extra SCenario************************/
    @Then("^I verify All Items Counts contain \"([^\"]*)\" items$")
    public void i_verify_All_Items_contain_items(int arg2) throws Throwable {
	IncognitoLogin.AllitemTotalCount(arg2);
    }

    @Then("^I verify All Items Counts contain \"([^\"]*)\" items sit$")
    public void i_verify_All_Items_contain_items_sit(int arg2) throws Throwable {
	IncognitoLogin.AllitemTotalCountSIT(arg2);
    }

    @Then("^I check the title of the page$")
    public void i_check_the_title_of_the_page() throws Throwable {
	IncognitoLogin.checkPageTitle();
    }

    @Then("^I scroll right$")
    public void i_scroll_right() throws Throwable {
	// Write code here that turns the phrase above into concrete actions
	IncognitoLogin.scrollLeft();
    }

}
