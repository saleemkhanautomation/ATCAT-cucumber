Feature: Recon Group Creation

   Scenario: Login to the application
    Given Open browser in incognito and navigate to "https://reconadvisor3-test.accenture.com/sit/"
    And I wait for "60" seconds
    Then pass your "xpath1" in "email"
    # Here type your username in the properties file
    Then Navigate to "PasswordPage"
    Then pass your "passwordpath" in "password"
    # Here type your password in the properties file
    Then Navigate to "OTPpage"
    And I wait for "15000" seconds
    Then Navigate to "OTP"
    Then Navigate to "OTPsend"
    And I wait for "30000" seconds
    # Here type the OTP sent to email or phone manually within 30 seconds
    Then Navigate to "submitOTP"
    Then Navigate to "Dontremember"
    And I wait for "10000" seconds
    
  Scenario: Create Recon Group
   Given Navigate to "ReconGroupSettings"
   Then Navigate to "ReconGroup"
   And I wait for "15000" seconds
   Then Navigate to "PlusIcon"
   And I wait for "20000" seconds
   Then select the value " ZQWXM" from the dropdown "ReconGroupID1"
   Then select the value " 9005" from the dropdown "ReconGroupID2"
   Then select the value " 620600" from the dropdown "ReconGroupID3"
   Then select the value " XP803" from the dropdown "ReconGroupID4"
   # In the above four lines type the combinations that is needed to create the recon group
   Then pass your "ReconGroupDescription" in "RGD"
   #Here Recon group description value(RGD) should be given in the properties file
   Then select the value "RGT10" from the dropdown "ReconGroupTypeDropdown"
   #Here pass the recon type value name directly in the above line
   Then select the value "Medium" from the dropdown "ReconGroupRiskCategory"
   Then select the value "Global" from the dropdown "ReconGroupCalender"
   Then I clear the field "ReconGroupEndWorkday"
   Then I select the end day based on current month in the path "ReconGroupEndWorkday"
   And I wait for "2000" seconds
   Then Navigate to "CreateReconGroupp"
   And I wait for "25000" seconds
   
  Scenario: Verification of header columns
   Given I will verify the header columns in the "ReconGroup" page from "ReconG" row
   And I wait for "5000" seconds
    
  Scenario: Download and Verify the Excel sheet 
   Given I will verify whether the file "Recon Group" has been downloaded after clicking on the link "ExportToExcel"
   # Here type the excel sheet name that gets downloaded
   And I wait for "5000" seconds
   
 #Scenario: Upload GL and Bank Statement
  # Then I will search for the "ZQWXM-9005-620600-XP803" in the "ReconGroupTable"
   #Here we are searching the Recon group and clicking the correspoding upload button
   #Then Navigate to "ReconGroupAccountingPeriodDropdown"
   #Here we need to manually select the accounting period
   #And I wait for "6000" seconds
   #Then Navigate to "ReconGroupFirstUpload"
   #And I wait for "2000" seconds
   #Given Run AutoIT FileUpload1
   #Then Navigate to "ReconGroupSecondUpload"
   #And I wait for "2000" seconds
   #Given Run AutoIT FileUpload2
   #Then Navigate to "DoneButton"
   #And I wait for "2000" seconds
  
  Scenario: Search the Recon Group
   Then I type at "ReconGroupSearch" value "ZQWXM-9005-620600-XMWIP"
   # Here the recon Group name is given directly in the above line
   Then I verify whether the value "ZQWXM-9005-620600-XP803" is present in the "ReconGroupValueAfterSearch"
   # Here we are verifying whether the recon group value passed in present or not the recon Group name is given directly in the above line
   Then I refresh the page
   