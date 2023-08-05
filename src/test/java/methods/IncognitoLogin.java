package methods;

import java.awt.AWTException;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.Calendar;
import java.util.Properties;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

public class IncognitoLogin {

    public static Properties P = new Properties();
    public static WebDriver driver1;
    public static String downloadPath = Paths.get(System.getProperty("user.home"), "Downloads").toString();
    public static Logger logger = Logger.getLogger("IncognitoLogin");

    public static void drive(String url) throws InterruptedException {
	System.setProperty("webdriver.chrome.driver", ".\\WebDriver\\chromedriver.exe");
	ChromeOptions options = new ChromeOptions();
	options.addArguments("--incognito");
	DesiredCapabilities capabilities = DesiredCapabilities.chrome();
	capabilities.setCapability(ChromeOptions.CAPABILITY, options);
	driver1 = new ChromeDriver(capabilities);
	Thread.sleep(3000);
	driver1.navigate().refresh();
	logger.info("opening in incognito");

	driver1.get(url);
	//driver1.navigate().refresh();
	//Thread.sleep(10000);
	driver1.manage().timeouts().implicitlyWait(60, TimeUnit.SECONDS);
	driver1.manage().window().maximize();
    }

    public static void type(String xpath, String content) throws IOException {
	FileInputStream fis = new FileInputStream("RTR_BHGE 3\\RTR_BHGE.properties");
	P.load(fis);
	driver1.findElement(By.xpath(P.getProperty(xpath))).sendKeys(P.getProperty(content));
    }

    public static void click(String xpath) throws IOException {
	// driver1.manage().timeouts().implicitlyWait(10,TimeUnit.SECONDS) ;
	FileInputStream fis = new FileInputStream("RTR_BHGE 3\\RTR_BHGE.properties");
	P.load(fis);
	driver1.findElement(By.xpath(P.getProperty(xpath))).click();
    }

    public static void wait(String time) throws IOException, InterruptedException {
	int t = Integer.parseInt(time);
	Thread.sleep(t);
    }

    public static void refreshPage() throws IOException, InterruptedException {
	driver1.navigate().refresh();
    }

    /******************************************* Naganand's code starts *****************************************/
    public static void Accessingdropdown(String xpath, String value) throws Exception {
	FileInputStream fis = new FileInputStream("RTR_BHGE 3\\RTR_BHGE.properties");
	P.load(fis);
	try {
	    WebElement val = driver1.findElement(By.xpath(P.getProperty(xpath)));
	    //Get all options in a list
	    java.util.List<WebElement> options = val.findElements(By.tagName("option"));
	    //Iterate thorough options
	    for (WebElement option : options) {
		if (value.equals(option.getText()))
		    option.click();
	    }
	} catch (Exception e) {
	    WebElement val = driver1.findElement(By.xpath(P.getProperty(xpath)));
	    //Get all options in a list
	    java.util.List<WebElement> options = val.findElements(By.tagName("option"));
	    //Iterate thorough options
	    for (WebElement option : options) {
		if (value.equals(option.getText()))
		    option.click();
	    }
	}

    }

    public static void Accessingdropdown1(String xpath, String value) throws Exception {
	FileInputStream fis = new FileInputStream("RTR_BHGE 3\\RTR_BHGE.properties");
	P.load(fis);
	try {
	    WebElement val = driver1.findElement(By.xpath(xpath));
	    //Get all options in a list
	    java.util.List<WebElement> options = val.findElements(By.tagName("option"));
	    //Iterate thorough options
	    for (WebElement option : options) {
		if (value.equals(option.getText()))
		    option.click();
	    }
	} catch (Exception e) {
	    WebElement val = driver1.findElement(By.xpath(xpath));
	    //Get all options in a list
	    java.util.List<WebElement> options = val.findElements(By.tagName("option"));
	    //Iterate thorough options
	    for (WebElement option : options) {
		if (value.equals(option.getText()))
		    option.click();
	    }
	}

    }

    public static void Access_dropdown(String xpath, String value) throws Exception {
	FileInputStream fis = new FileInputStream("RTR_BHGE 3\\\\RTR_BHGE.properties");
	P.load(fis);
	WebElement dropdown;
	Select select;
	driver1.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
	try {
	    //System.err.println(P.getProperty(xpath));
	    dropdown = driver1.findElement(By.xpath(P.getProperty(xpath)));
	    select = new Select(dropdown);
	    select.selectByVisibleText(value);
	    //	dropdown = driver.findElement(By.xpath(P.getProperty(xpath)));
	    //	 wc.log("Accessing dropdown   " + P.getProperty(xpath));
	    //    select = new Select(dropdown);
	    //	select.selectByVisibleText(P.getProperty(xpath));
	} catch (Exception e) {
	    //System.out.println(e);
	}
    }

    public static void ValueVerify(String xpath, String value) throws Exception {
	FileInputStream fis = new FileInputStream("RTR_BHGE 3\\RTR_BHGE.properties");
	P.load(fis);
	String value1 = driver1.findElement(By.xpath(P.getProperty(xpath))).getText();
	//WebElement value2=driver1.findElement(By.xpath(P.getProperty(value)));
	if (value.equals(value1))
	    System.out.println(value + " is present");
	else
	    System.out.println(value + " is not present");
    }

    public static void ReconGroupgetText(String xpath, String value) throws Exception {
	FileInputStream fis = new FileInputStream("RTR_BHGE 3\\RTR_BHGE.properties");
	P.load(fis);
	String value1 = "";
	try {
	    value1 = driver1.findElement(By.xpath(P.getProperty(xpath))).getText();
	    if (value1.equals(value)) {
		System.out.println(value + " is present");
		System.out.println("Please try new combination");
		logout();
	    }
	} catch (Exception e) {

	}

    }

    public static void logout() throws Exception {
	FileInputStream fis = new FileInputStream("RTR_BHGE 3\\RTR_BHGE.properties");
	P.load(fis);
	driver1.findElement(By.xpath(P.getProperty("LogoutDropdown"))).click();
	driver1.findElement(By.xpath(P.getProperty("LogoutButton"))).click();
    }

    public static void mth(String xpath) throws Exception {
	int number;
	int month = Calendar.getInstance().get(Calendar.MONTH) + 3;
	if (month == 12) {
	    number = 22;
	    //	 driver1.findElement(By.xpath(P.getProperty(xpath))).sendKeys("22");
	} else if (month > 12)
	    month = month - 13;
	String[] a = { "23", "22", "23", "22", "22", "23", "22", "23", "22", "23", "23", "22", "23" };

	driver1.findElement(By.xpath(P.getProperty(xpath))).sendKeys(a[month]);
    }

    public static void Clear(String xpath) throws Exception {
	FileInputStream fis = new FileInputStream("RTR_BHGE 3\\RTR_BHGE.properties");
	P.load(fis);
	driver1.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
	try {
	    // wc.log("Clear textfield  " +  P.getProperty(xpath));
	    driver1.findElement(By.xpath(P.getProperty(xpath))).clear();
	} catch (Exception e) {
	    System.out.println(e);
	}
    }

    public static void verifyDownloadWithFileName(String filename, String xpath) throws Exception {
	driver1.findElement(By.xpath(P.getProperty(xpath))).click();
	Thread.sleep(30000);
	boolean status = isFileDownloaded(downloadPath, filename);
	if (status == false) {

	    System.out.println("Failed to download Expected document");
	} else {

	    System.out.println(filename + " file downloaded successfully");
	}
    }

    public static boolean isFileDownloaded(String download, String fileName) throws Exception {
	boolean flag = false;
	File dir = new File(download);
	File[] dir_contents = dir.listFiles();

	for (int i = 0; i < dir_contents.length; i++) {
	    String value = dir_contents[i].getName();
	    if (value.contains(fileName))
		return flag = true;
	}

	return flag;
    }

    public static void headerColumns(String pageName, String rowName) throws Exception {
	File Source = new File(System.getProperty("user.home")
		+ "\\OneDrive - Accenture\\RTR_Automation (1)\\ATCAT 5.0\\Test Data\\TestData.xlsx");
	int i = 1;
	System.out.println("The column names in " + pageName + " are");
	try {
	    while (true) {
		String value = "Column" + i;
		// System.out.println(value);
		String Data = XLSX.getData(Source, "ReconGroup", rowName, value);
		if (!(Data.equals(null))) {
		    System.out.println(Data);
		    i++;
		} else
		    break;
	    }
	} catch (Exception e) {
	}
    }

    public static void autoIT_UploadFile1() throws Exception {
	Runtime.getRuntime().exec("AutoIT\\upload1.exe");
    }

    public static void autoIT_UploadFile2() throws Exception {
	Runtime.getRuntime().exec("AutoIT\\upload2.exe");
    }

    public static void reconGroupBulkUpload() throws Exception {
	Runtime.getRuntime().exec("AutoIT\\ReconGroupBulkUpload.exe");
    }

    public static void reconGroupBulkUpdatePreparers() throws Exception {
	Runtime.getRuntime().exec("AutoIT\\ReconGroupBulkUpdatePreparers.exe");
    }

    public static void Accruals() throws Exception {
	driver1.findElement(By.xpath("//input[@name='...']")).click();
	Thread.sleep(5000);
	Runtime.getRuntime().exec("AutoIT\\BHGEAccruals.exe");
    }

    public static void table(String value, String tableXpath) {
	int TableCount = 0;
	int i = 0;
	java.util.List<WebElement> list = driver1.findElements(By.xpath(P.getProperty(tableXpath)));

	for (WebElement e : list) {
	    TableCount = list.size();
	}

	for (i = 1; i <= TableCount; i++) {
	    String Content = driver1.findElement(By.xpath("//table[@id='recon_Groups']/tbody/tr[" + i + "]/td[3]"))
		    .getText();
	    if (Content.equals(value)) {
		driver1.findElement(By.xpath("//table[@id='recon_Groups']/tbody/tr[" + i + "]/td[14]")).click();

	    }

	}

    }

    public static void validationdeletiontable(String value1) throws Exception {
	int TableCount = 0;
	int i = 0;
	java.util.List<WebElement> list = driver1.findElements(By.xpath("//table[@id='validation_listing']/tbody/tr"));
	// String value1=(driver1.findElements(By.xpath(P.getProperty(value)))).toString();
	for (WebElement e : list) {
	    TableCount = list.size();
	}
	for (i = 2; i <= TableCount; i++) {
	    String Content = driver1
		    .findElement(By.xpath("//table[@id='validation_listing']/tbody/tr[" + i + "]/td[1]/div/div/div[1]"))
		    .getText();
	    if (Content.equals(value1)) {
		driver1.findElement(
			By.xpath("//table[@id='validation_listing']/tbody/tr[" + i + "]/td[5]/div/a/span/img")).click();
		Thread.sleep(5000);
		driver1.findElement(By.xpath("//button[contains(text(),'Delete')]")).click();
		break;
	    }
	}
	int count = 0;
	for (i = 2; i <= TableCount; i++) {
	    String Content = driver1
		    .findElement(By.xpath("//table[@id='validation_listing']/tbody/tr[" + i + "]/td[1]/div/div/div[1]"))
		    .getText();
	    if (Content.equals(value1)) {
		count++;
	    }
	}
	if (count == 0)
	    System.out.println("The record " + value1 + " has been deleted");
    }

    public static void validationupdationtable(String value) throws Exception {
	int TableCount = 0;
	int i = 0;
	java.util.List<WebElement> list = driver1.findElements(By.xpath("//table[@id='validation_listing']/tbody/tr"));
	for (WebElement e : list) {
	    TableCount = list.size();
	}
	for (i = 2; i <= TableCount; i++) {
	    String Content = driver1
		    .findElement(By.xpath("//table[@id='validation_listing']/tbody/tr[" + i + "]/td[1]/div/div/div[1]"))
		    .getText();
	    if (Content.equals(value)) {
		driver1.findElement(
			By.xpath("//table[@id='validation_listing']/tbody/tr[" + i + "]/td[4]/div/a/span/img")).click();
	    }
	}
    }

    public static void validationconfigurechecklisttable(String value) throws Exception {
	int TableCount = 0;
	int i = 0;
	java.util.List<WebElement> list = driver1.findElements(By.xpath("//table[@id='validation_listing']/tbody/tr"));
	for (WebElement e : list) {
	    TableCount = list.size();
	}
	for (i = 2; i <= TableCount; i++) {
	    String Content = driver1
		    .findElement(By.xpath("//table[@id='validation_listing']/tbody/tr[" + i + "]/td[1]/div/div/div[1]"))
		    .getText();
	    if (Content.equals(value)) {
		driver1.findElement(
			By.xpath("//table[@id='validation_listing']/tbody/tr[" + i + "]/td[2]/div/div/span")).click();
		break;
	    }
	}
    }

    public static void validationdatasets(String value) throws Exception {
	int TableCount = 0;
	int i = 0;
	java.util.List<WebElement> list = driver1.findElements(By.xpath("//table[@id='config_datasets']/tbody/tr"));
	for (WebElement e : list) {
	    TableCount = list.size();
	}
	for (i = 2; i <= TableCount; i++) {
	    String Content = driver1
		    .findElement(By.xpath("//table[@id='config_datasets']/tbody/tr[" + i + "]/td[2]/div")).getText();
	    if (Content.equals(value)) {
		driver1.findElement(By.xpath("//table[@id='config_datasets']/tbody/tr[" + i + "]/td[1]/div/span"))
			.click();
		break;
	    }
	}
    }

    public static void validationchecklist(String value) throws Exception {
	String[] values = value.split(",");
	int length = values.length;
	int j = 0;
	for (int i = 1; i <= (length / 2); i++) {
	    driver1.findElement(By.xpath("//*[@id=\"addMoreValidation\"]/div[" + i + "]/label/span[2]/input"))
		    .sendKeys(values[j]);
	    j++;
	    driver1.findElement(By.xpath("//*[@id=\"addMoreValidation\"]/div[" + i + "]/label/span[2]/div[2]/input"))
		    .sendKeys(values[j]);
	    j++;
	    driver1.findElement(By.xpath("//*[@id='addMoreValidation']/div[" + i + "]/label/span[1]")).click();
	    driver1.findElement(By.xpath("//span[contains(text(),'+ More')]")).click();
	}
    }

    public static void validationconfiguredatasetstable(String value) throws Exception {
	int TableCount = 0;
	int i = 0;
	java.util.List<WebElement> list = driver1.findElements(By.xpath("//table[@id='validation_listing']/tbody/tr"));
	for (WebElement e : list) {
	    TableCount = list.size();
	}
	for (i = 2; i <= TableCount; i++) {
	    String Content = driver1
		    .findElement(By.xpath("//table[@id='validation_listing']/tbody/tr[" + i + "]/td[1]/div/div/div[1]"))
		    .getText();
	    if (Content.equals(value)) {
		driver1.findElement(
			By.xpath("//table[@id='validation_listing']/tbody/tr[" + i + "]/td[3]/div/div/span")).click();
		break;
	    }
	}
    }

    public static void recongrouptable(String value) throws Exception {
	int TableCount = 0;
	int i = 0;
	java.util.List<WebElement> list = driver1.findElements(By.xpath("//table[@id='recon_Groups']/tbody/tr"));
	for (WebElement e : list) {
	    TableCount = list.size();
	}
	for (i = 2; i <= TableCount; i++) {
	    String Content = driver1.findElement(By.xpath("//table[@id='recon_Groups']/tbody/tr[" + i + "]/td[3]/div"))
		    .getText();
	    if (Content.equals(value)) {
		driver1.findElement(By.xpath("//table[@id='recon_Groups']/tbody/tr[" + i + "]/td[7]/div/a/span/img"))
			.click();
		break;
	    }
	}
    }

    public static int flowNum() throws Exception {
	int i = 1;
	try {
	    for (i = 1;; i++) {
		driver1.findElement(By.xpath("//div[contains(text(),'" + i + ".')]")).getText();
	    }
	} catch (Exception e) {
	    return (i - 2);
	}
    }

    public static void sign1(String value) throws Exception {
	if (value.equals("same")) {
	    driver1.findElement(By.xpath(
		    "//*[@id='createReconGroupType']/div[2]/div/div[1]/div[3]/div[2]/div/div[1]/div/div[4]/div[3]/label/span[2]"))
		    .click();
	} else {
	    driver1.findElement(By.xpath(
		    "//*[@id='createReconGroupType']/div[2]/div/div[1]/div[3]/div[2]/div/div[1]/div/div[4]/div[2]/label/span[2]"))
		    .click();
	}
    }

    public static void sign2(String value) throws Exception {
	if (value.equals("same")) {
	    driver1.findElement(By.xpath(
		    "//*[@id='createReconGroupType']/div[2]/div/div[1]/div[3]/div[2]/div/div[2]/div/div[4]/div[3]/label/span[2]"))
		    .click();
	} else {
	    driver1.findElement(By.xpath(
		    "//*[@id='createReconGroupType']/div[2]/div/div[1]/div[3]/div[2]/div/div[2]/div/div[4]/div[2]/label/span[2]"))
		    .click();
	}
    }

    public static void sign3(String value) throws Exception {
	if (value.equals("same")) {
	    driver1.findElement(By.xpath(
		    "//*[@id='createReconGroupType']/div[2]/div/div[1]/div[3]/div[2]/div/div[3]/div/div[4]/div[3]/label/span[2]"))
		    .click();
	} else {
	    driver1.findElement(By.xpath(
		    "//*[@id='createReconGroupType']/div[2]/div/div[1]/div[3]/div[2]/div/div[3]/div/div[4]/div[2]/label/span[2]"))
		    .click();
	}
    }

    public static void recordvariance1(String value) throws Exception {
	if (value.equals("permatch")) {
	    driver1.findElement(By.xpath("//*[@id='thresholdHiddenBlock_0']/div[1]/div[3]/label/span[2]")).click();
	} else {
	    driver1.findElement(By.xpath("//*[@id='thresholdHiddenBlock_0']/div[1]/div[2]/label/span[2]")).click();
	}
    }

    public static void recordvariance2(String value) throws Exception {
	if (value.equals("permatch")) {
	    driver1.findElement(By.xpath("//*[@id='thresholdHiddenBlock_1']/div[1]/div[3]/label/span[2]")).click();
	} else {
	    driver1.findElement(By.xpath("//*[@id='thresholdHiddenBlock_1']/div[1]/div[2]/label/span[2]")).click();
	}
    }

    public static void recordvariance3(String value) throws Exception {
	if (value.equals("permatch")) {
	    driver1.findElement(By.xpath("//*[@id=\"thresholdHiddenBlock_2\"]/div[1]/div[3]/label/span[2]")).click();
	} else {
	    driver1.findElement(By.xpath("//*[@id=\"thresholdHiddenBlock_2\"]/div[1]/div[2]/label/span[2]")).click();
	}
    }

    /******************************************* Naganand's code ends *****************************************/

    /******************************************* Abdul's code starts *****************************************/
    public static void verificationwebelement(String arg1) throws IOException {

	FileInputStream fis = new FileInputStream("RTR_BHGE 3\\\\RTR_BHGE.properties");
	P.load(fis);
	try {
	    if (driver1.findElement(By.xpath(P.getProperty(arg1))).isDisplayed())
		System.out.println("The field " + arg1 + " is present");
	} catch (Exception e) {
	    System.out.println("The field " + arg1 + " is not present");
	}
    }

    public static void entervalueinfield(String arg1, String arg2) throws IOException {
	FileInputStream fis = new FileInputStream("RTR_BHGE 3\\\\RTR_BHGE.properties");
	P.load(fis);
	driver1.findElement(By.xpath(P.getProperty(arg2))).sendKeys(arg1);
    }

    public static void clearfield(String arg1) throws IOException {
	FileInputStream fis = new FileInputStream("RTR_BHGE 3\\\\RTR_BHGE.properties");
	P.load(fis);
	driver1.findElement(By.xpath(P.getProperty(arg1))).clear();

    }

    public static void browserclose() {
	driver1.quit();

    }

    public static void searchverification(String arg1) throws InterruptedException {
	try {
	    driver1.findElement(By.xpath("//input[@id='top-search']")).sendKeys(arg1);
	} catch (Exception e) {
	    System.out.println("In Catch");
	}
	Thread.sleep(10);
	String result = driver1.findElement(By.xpath("//a[@id='reconGroup_1']")).getText();
	if (result.contains(arg1)) {
	    System.out.println("Search result is as entered in Search box");
	} else {
	    System.out.println("Search result is NOT as entered in Search box");
	}
	driver1.findElement(By.xpath("//input[@id='top-search']")).clear();
	Thread.sleep(5000);
    }

    public static void recongrouptypesearch() throws InterruptedException {
	driver1.findElement(By.xpath("//span[text()='Recon Group Settings ']")).click();
	Thread.sleep(1000);
	driver1.findElement(By.xpath("//a[@href='#/recongroups']")).click();
	Thread.sleep(50000);
	driver1.findElement(By.xpath("//span[text()='Dashboard']")).click();
	Thread.sleep(50000);
	driver1.findElement(By.xpath("//input[@placeholder='Select Recon Group Type']")).sendKeys("RGT7");
	Thread.sleep(10000);
	driver1.findElement(By.xpath("//li[text()='RGT7']")).click();
	Thread.sleep(50000);
	String result = driver1.findElement(By.xpath("//a[@id='reconGroup_1']")).getText();
	if (result.contains("ZQWXM-9005-620600-XUSAN")) {
	    System.out.println("Recon Group Type search result is as entered in Recon Group Type");
	} else {
	    System.out.println("Recon Group Type search result is NOT as entered in Recon Group Type!!!!!!!");
	}
    }

    public static void matchingcommentverification() {

	try {
	    String content = driver1
		    .findElement(By.xpath("//*[@id=\"matcheditems\"]/div[1]/div[2]/div/div[1]/div[2]/h5")).getText();
	    if (content.isEmpty()) {
		System.out.println("The Matching Comment is not Present!!!!");
	    } else {
		System.out.println("The Matching Comment " + content + "is present");
	    }
	}

	catch (Exception e) {
	    System.out.println("The Matching Comment field itself NOT present!!!!");
	}

    }

    public static void sentforreviewverification(String arg1) {
	try {
	    if (driver1.findElement(By.xpath("//span[text()='" + arg1 + "']")).isDisplayed()) {
		System.out.println(
			"Sent for review is working as expected " + arg1 + " is avialble in Sent for review tab");
	    } else {
		System.out.println("Sent for review is not working as expected " + arg1
			+ " is NOT avialble in Sent for review tab");
	    }
	}

	catch (Exception e) {
	    System.out.println(
		    "Sent for review is not working as expected " + arg1 + " is NOT avialble in Sent for review tab");
	}

    }

    public static void matchedverification(String arg1) throws InterruptedException {
	driver1.findElement(By.xpath("//a[text()='Matched Items ']")).click();
	Thread.sleep(2000);
	driver1.findElement(By.xpath("(//span[@class='select2-selection select2-selection--single'])[2]")).click();
	Thread.sleep(2000);
	driver1.findElement(By.xpath("//span[@class=\"select2-results\"]/ul/li[2]")).click();
	Thread.sleep(2000);

	driver1.findElement(By.xpath("(//a[@data-toggle='modal']/span)[1]")).click();
	Thread.sleep(2000);

	//WebElement elementToClick = driver1.findElement(By.xpath("(//button[@id='clear_filters'])[3]"));
	//Thread.sleep(2000);
	//elementToClick = driver1.findElement(By.xpath("(//button[@id='clear_filters'])[4]"));

	// ((JavascriptExecutor)driver1).executeScript("arguments[0].click();", elementToClick);

	Thread.sleep(2000);
	driver1.findElement(By.xpath("(//input[@id='searchInput'])[2]")).sendKeys(arg1);
	Thread.sleep(2000);
	driver1.findElement(By.xpath("(//div[4]/button[@id='popoverSaveBtn'])[2] ")).click();
	Thread.sleep(3000);

	try {
	    if (driver1.findElement(By.xpath("((//tr[@id='1'])[1]/td)[1]")).isDisplayed()) {
		System.out
			.println("Match button is working as expected " + arg1 + " record is avialble in Matched tab");
	    } else {
		System.out.println(
			"Match button is not working as expected " + arg1 + " record is NOT avialble in Matched tab");
	    }
	}

	catch (Exception e) {
	    System.out.println(
		    "Match button is not working as expected " + arg1 + "  record is NOT avialble in Matched tab");
	}
    }

    public static void clickonwebelement(String arg1) throws IOException {
	try {
	    FileInputStream fis = new FileInputStream("RTR_BHGE 3\\RTR_BHGE.properties");
	    P.load(fis);

	    WebElement elementToClick = driver1.findElement(By.xpath(P.getProperty(arg1)));

	    ((JavascriptExecutor) driver1).executeScript("arguments[0].click();", elementToClick);
	} catch (Exception e) {
	    System.out.println(arg1 + " is not present or not clickable");
	}

    }

    public static void unmatchbtnverification(String arg1) throws InterruptedException {
	try {
	    Thread.sleep(3000);
	    String matcheditemscount = driver1.findElement(By.xpath("//a[text()='Matched Items ']/span[2]")).getText();
	    int matchedcount = Integer.parseInt(matcheditemscount);

	    driver1.findElement(By.xpath("((//tr[@id='1'])[1]/td)[1]/div")).click();
	    Thread.sleep(2000);
	    driver1.findElement(By.xpath("//a[text()='Unmatch']")).click();
	    Thread.sleep(4000);

	    String matcheditemscount1 = driver1.findElement(By.xpath("//a[text()='Matched Items ']/span[2]")).getText();
	    int matchedcountpost = Integer.parseInt(matcheditemscount1);

	    if (matchedcountpost < matchedcount) {
		System.out.println(
			"UnMatch button functionality is working as expected " + arg1 + " is unmatched successfully");
	    } else {
		System.out.println("UnMatch button functionality is Not working as expected " + arg1
			+ " is NOT unmatched successfully");
	    }
	} catch (Exception e) {
	    System.out.println("Unmatch Button Functionality testing failed");
	}
    }

    public static void dismissbtnverification() throws InterruptedException {
	try {
	    String ecount = driver1.findElement(By.xpath("//a[text()='Suggested Items ']/span[2]")).getText();
	    int earliercount = Integer.parseInt(ecount);
	    System.out.println(earliercount);

	    Thread.sleep(8000);
	    driver1.findElement(By.xpath("//app-suggestedmatches/div/div[4]/div[2]/div/div/div[1]/a")).click();
	    Thread.sleep(6000);
	    try {
		if (driver1.findElement(By.xpath("//*[@id='confirmModal']/div/div/div[2]/button[2]")).isDisplayed()) {
		    WebDriverWait alert = new WebDriverWait(driver1, 5);
		    alert.until(ExpectedConditions
			    .visibilityOfElementLocated(By.xpath("//*[@id='confirmModal']/div/div/div[2]/button[2]")));
		    Thread.sleep(3000);
		    driver1.findElement(By.xpath("//*[@id='confirmModal']/div/div/div[2]/button[2]")).click();
		}
	    } catch (Exception e) {
		System.out.println("Error");
	    }

	    Thread.sleep(15000);
	    String ltrcount = driver1.findElement(By.xpath("//a[text()='Suggested Items ']/span[2]")).getText();
	    Thread.sleep(6000);

	    int ltrcountpost = Integer.parseInt(ltrcount);
	    System.out.println(ltrcountpost);
	    Thread.sleep(6000);
	    if (ltrcountpost < earliercount) {
		System.out.println("Dismiss button functionality is working as expected.");
	    } else {
		System.out.println("Dismiss button functionality is NOT working as expected.");
	    }
	} catch (Exception e) {
	    System.out.println("Dismiss button Functionality testing failed");
	}

    }

    public static void matchbtninsuggstntabverification() throws InterruptedException {
	try {
	    String ecount = driver1.findElement(By.xpath("//a[text()='Suggested Items ']/span[2]")).getText();
	    int earliercount = Integer.parseInt(ecount);

	    Thread.sleep(4000);
	    driver1.findElement(By.xpath("//app-suggestedmatches/div/div[4]/div[2]/div/div/div[2]/a")).click();
	    Thread.sleep(6000);
	    try {
		if (driver1.findElement(By.xpath("//*[@id='confirmModal']/div/div/div[2]/button[2]")).isDisplayed()) {
		    WebDriverWait alert = new WebDriverWait(driver1, 5);
		    alert.until(ExpectedConditions
			    .visibilityOfElementLocated(By.xpath("//*[@id='confirmModal']/div/div/div[2]/button[2]")));
		    Thread.sleep(3000);
		    driver1.findElement(By.xpath("//*[@id='confirmModal']/div/div/div[2]/button[2]")).click();
		}
	    } catch (Exception e) {
		System.out.println("Error");
	    }

	    Thread.sleep(10000);
	    String ltrcount = driver1.findElement(By.xpath("//a[text()='Suggested Items ']/span[2]")).getText();
	    int ltrcountpost = Integer.parseInt(ltrcount);

	    if (ltrcountpost < earliercount) {
		System.out.println("Match button functionality is working as expected under suggested items tab.");
	    } else {
		System.out.println("Match button functionality is NOT working as expected under suggested items tab.");
	    }
	} catch (Exception e) {
	    System.out.println("Match Button Functionality testing failed under Suggestion tab");
	}

    }

    public static void updatefuncverification() throws InterruptedException {
	try {
	    String beforedecs = driver1.findElement(By.xpath("//input[@placeholder='Enter Description']")).getText();
	    Thread.sleep(1000);
	    driver1.findElement(By.xpath("//input[@placeholder='Enter Description']")).sendKeys(" UpdateTesting");
	    Thread.sleep(2000);
	    driver1.findElement(By.xpath("//button[text()='Save']")).click();
	    Thread.sleep(5000);
	    String afterdecs = driver1.findElement(By.xpath("//tr[@id=\"1\"]/td[1]/div/div/div[2]")).getText();
	    if (beforedecs.equals(afterdecs)) {
		System.out.println("Update Classification is NOT working as expected!!!!!!!!");
	    } else {
		System.out
			.println("Update Classification is working as expected. The new classificaiton description is: "
				+ afterdecs);
	    }
	} catch (Exception e) {
	    System.out.println("Update Classification testing failed");
	}
    }

    public static void deletefuncverification() throws InterruptedException {
	try {
	    String beforedeletion = driver1.findElement(By.xpath("//tr[@id=\"1\"]/td[1]/div/div/div[2]")).getText();
	    Thread.sleep(1000);
	    driver1.findElement(By.xpath("//img[@id='delete_1']")).click();
	    Thread.sleep(3000);
	    driver1.findElement(By.xpath("(//button[text()='Delete'])[2]")).click();
	    Thread.sleep(5000);
	    String afterdeletion = driver1.findElement(By.xpath("//tr[@id=\"1\"]/td[1]/div/div/div[2]")).getText();
	    if (beforedeletion.equals(afterdeletion)) {
		System.out.println("Delete Classification is NOT working as expected!!!!!!!!");
	    } else {
		System.out.println("Successfully Deleted Classification whose description was: " + beforedeletion);
	    }
	} catch (Exception e) {
	    System.out.println("Delete Classification Testing failed");
	}

    }

    public static void matchbtnfuncverificationallitemstabs() {
	try {
	    String ecount = driver1.findElement(By.xpath("//span[@class='totalItems green']")).getText();
	    int earliercount = Integer.parseInt(ecount);
	    System.out.println(earliercount);

	    Thread.sleep(3000);
	    driver1.findElement(By.xpath("//app-allitems/div/div[7]/div[2]/div/div[4]/a")).click();
	    Thread.sleep(3000);

	    /////////////////Pop up message check///////////////////////////////////////
	    try {
		if (driver1.findElement(By.xpath("//*[@id='confirmModal']/div/div/div[2]/button[2]")).isDisplayed()) {
		    WebDriverWait alert = new WebDriverWait(driver1, 5);
		    alert.until(ExpectedConditions
			    .visibilityOfElementLocated(By.xpath("//*[@id='confirmModal']/div/div/div[2]/button[2]")));
		    Thread.sleep(3000);
		    driver1.findElement(By.xpath("//*[@id='confirmModal']/div/div/div[2]/button[2]")).click();
		} else {
		    System.out.println("Matching is without Classification!!");
		}
	    } catch (Exception e) {
		System.out.println("No pop up visible!!");
	    }
	    ////////////////////////////////////////////////////////

	    //   driver1.findElement(By.xpath("(//*[@id='hoverText'])[4]")).click();
	    Thread.sleep(6000);

	    String ltrcount = driver1.findElement(By.xpath("//span[@class='totalItems green']")).getText();
	    int ltrcountpost = Integer.parseInt(ltrcount);
	    System.out.println(ltrcount);
	    Assert.assertTrue("Match is not working", ltrcountpost > earliercount);
	    if (ltrcountpost > earliercount) {
		System.out.println("Match button functionality is working as expected under All items tab.");
	    } else {
		System.out.println("Match button functionality is NOT working as expected under All items tab.");
	    }
	} catch (Exception e) {
	    System.out.println(e);
	}
    }

    public static void unmatchbtnverify() throws InterruptedException {
	try {
	    driver1.findElement(By.xpath("//a[text()='Matched Items ']")).click();
	    Thread.sleep(10000);
	    String ecount = driver1.findElement(By.xpath("//span[@class='totalItems green']")).getText();
	    int earliercount = Integer.parseInt(ecount);
	    Thread.sleep(2000);
	    driver1.findElement(
		    By.xpath("//app-gridtable/div/div[2]/div[3]/div[3]/div/table/tbody/tr[2]/td[1]/div/label/span"))
		    .click();
	    Thread.sleep(2000);
	    driver1.findElement(By.xpath("//app-matcheditems/div/div[4]/div[2]/div/div[3]")).click();
	    Thread.sleep(3000);

	    /////////////////Pop up message check///////////////////////////////////////
	    try {
		if (driver1.findElement(By.xpath("//*[@id='confirmModal']/div/div/div[2]/button[2]")).isDisplayed()) {
		    WebDriverWait alert = new WebDriverWait(driver1, 5);
		    alert.until(ExpectedConditions
			    .visibilityOfElementLocated(By.xpath("//*[@id='confirmModal']/div/div/div[2]/button[2]")));
		    Thread.sleep(3000);
		    driver1.findElement(By.xpath("//*[@id='confirmModal']/div/div/div[2]/button[2]")).click();
		}
	    } catch (Exception e) {
		System.out.println("Error");
	    }
	    //////////////////////////////////////////////////////////////////////////////////
	    Thread.sleep(4000);
	    String ltrcount = driver1.findElement(By.xpath("//span[@class='totalItems green']")).getText();
	    int ltrcountpost = Integer.parseInt(ltrcount);
	    if (ltrcountpost < earliercount) {
		System.out.println("UnMatch button functionality is working as expected.");
	    } else {
		System.out.println("UnMatch button functionality is NOT working as expected.");
	    }
	} catch (Exception e) {
	    System.out.println(e);
	}
    }

    /******************************************* Abdul's code ends *****************************************/

    /******************************************* Saleem's code starts *****************************************/

    public static void typeValue(String xpath, String content) throws IOException {

	FileInputStream fis = new FileInputStream("RTR_BHGE 3\\\\RTR_BHGE.properties");
	P.load(fis);
	logger.info("Typing at " + xpath + " Value is: " + content);
	driver1.findElement(By.xpath(P.getProperty(xpath))).sendKeys(content);
    }

    public static void selectValue(String xpath, String content) throws IOException {

	FileInputStream fis = new FileInputStream("RTR_BHGE 3\\\\RTR_BHGE.properties");
	P.load(fis);
	WebElement c = driver1.findElement(By.xpath(P.getProperty(xpath)));
	Select s = new Select(c);
	s.selectByValue(content);

    }

    public static void uploadBHGEExcel() throws IOException, InterruptedException, AWTException {
	driver1.findElement(By.xpath("//*[@id='dataSetList']/div/div[3]/div[2]/div/div/div[2]/div[2]/input")).click();
	Thread.sleep(5000);
	logger.info("Uploading template");
	Runtime.getRuntime().exec("AutoIT\\UploadDataTemplate1.exe");
    }

    public static void setAsDefault(String xpath1, String xpath2) throws IOException {
	logger.info("Setting as Default");
	driver1.findElement(By.xpath(P.getProperty(xpath1))).click();
	logger.info("Setting as Unique field");
	driver1.findElement(By.xpath(P.getProperty(xpath2))).click();
    }

    public static void uploadBHGEExcelBankStatement() throws IOException, InterruptedException, AWTException {
    	logger.info("Clicking on upload button");
    	Thread.sleep(7000);
	driver1.findElement(By.xpath("//*[@id='dataSetList']//div[@class='btn-file']")).click();
	logger.info("Clicking on upload button 1");
	Thread.sleep(7000);
	logger.info("Uploading template");
	Runtime.getRuntime().exec("AutoIT\\test1.exe");
    }

    public static void explicitWAIt(String xpath) {
	/*WebElement ele1=driver1.findElement(By.xpath(P.getProperty(xpath)));*/
	WebDriverWait wait = new WebDriverWait(driver1, 30);
	wait.until(ExpectedConditions.visibilityOfElementLocated((By.xpath(P.getProperty(xpath)))));
    }

    public static void successSave() throws IOException {
	logger.info("Checking if it save successfully");
	String url = driver1.getCurrentUrl();
	if (url.contains("https://reconadvisor3-test.accenture.com/sit/#/datasets/datasetdetail")) {
	    Assert.assertEquals("https://reconadvisor3-test.accenture.com/sit/#/datasets/datasetdetail", url);
	    System.out.println("DataSet Save Successfully!!");

	} else {
	    System.out.println("DataSet not save!!");
	    Assert.assertEquals("https://reconadvisor3-test.accenture.com/sit/#/datasets/datasetdetail", url);
	}
    }

    public static void ClassificationsuccessSave() throws IOException {
	logger.info("Checking if it save successfully");
	String url = driver1.getCurrentUrl();
	if (url.contains("https://reconadvisor3-test.accenture.com/sit/#/classification")) {
	    Assert.assertEquals("https://reconadvisor3-test.accenture.com/sit/#/classification", url);
	    System.out.println("Classification Save Successfully!!");

	} else {
	    System.out.println("Classification not save!!");
	    Assert.assertEquals("https://reconadvisor3-test.accenture.com/sit/#/classification", url);
	}
    }

    public static void searchDataSet(String arg1, String arg2) throws InterruptedException {
	driver1.findElement(By
		.xpath("//*[@id='customiseClasssification']/div[2]/div[2]/div[2]/div/label/span[2][.='" + arg1 + "']"))
		.click();
	Thread.sleep(3000);
	driver1.findElement(By
		.xpath("//*[@id='customiseClasssification']/div[2]/div[2]/div[2]/div/label/span[2][.='" + arg2 + "']"))
		.click();
	////*[@id='customiseClasssification']/div[2]/div[2]/div[2]/div/label/span[2][.="S_Bank"]
    }

    public static void Buttonenabled(String xpath) throws InterruptedException {
	Boolean result = driver1.findElement(By.xpath(P.getProperty(xpath))).isEnabled();
	if (result = true) {
	    Assert.assertTrue(result);
	} else {
	    System.out.println("Delete Button not enabled!!");
	}
    }

    /******************************************* Saleem's code ends *****************************************/

    /********************************Extra Feature *****************************/
    public static void checkReconGroupPresent(String recon) throws InterruptedException {
	String reconGroup = driver1.findElement(By.xpath("//*[@id='reconGroup_1']/div/span")).getText();
	System.out.println("Recon Group is " + reconGroup);
	Thread.sleep(5000);
	if (reconGroup.contains(recon)) {
	    System.out.println("Recon Group is present!!");
	} else {
	    System.out.println("Recon Group is not present!!");
	}
    }

    public static void AllitemTotalCount(int count) throws InterruptedException {
	Thread.sleep(3000);
	String ecount = driver1.findElement(By.xpath("//app-matchinghome/div[1]/div[3]/div/ul/li[1]/a/span")).getText();
	System.out.println("The total Open items are " + ecount);
	Thread.sleep(3000);
	int count1 = Integer.parseInt(ecount);
	Assert.assertTrue(count1 == count);
    }

    public static void AllitemTotalCountSIT(int count) throws InterruptedException {
	Thread.sleep(3000);
	String ecount = driver1.findElement(By.xpath("//app-matchinghome/div[1]/div[4]/div/ul/li[1]/a/span")).getText();
	System.out.println("The total Open items are " + ecount);
	Thread.sleep(3000);
	int count1 = Integer.parseInt(ecount);
	Assert.assertTrue(count1 == count);
    }

    public static void checkPageTitle() {
	String url = driver1.getCurrentUrl();
	if (url.contains("https://reconadvisor3-test.accenture.com/sit/#/viewbackup")) {
	    System.out.println("It moves to second line item");
	} else if (url.contains("https://reconadvisor3-test.accenture.com/sit/#/matchinghome/openitems")) {
	    System.out.println("Only 1 line item is present");
	} else {
	    System.out.println("Some other page is open!!");
	}
    }

    public static void scrollLeft() {

    }
}