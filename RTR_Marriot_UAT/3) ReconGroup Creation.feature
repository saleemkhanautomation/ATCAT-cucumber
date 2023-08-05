Feature: Recon Group

 Scenario: Create Recon Group
  Given Open browser in incognito and navigate to "https://reconadvisor3-test.accenture.com/marriott-uat/"
    And I wait for "60" seconds
   
    Then pass your "xpath1" in "email"
    And I wait for "10000" seconds
    # Here type your username in the properties file
    Then Navigate to "PasswordPage"
    And I wait for "10000" seconds
    Then pass your "passwordpath" in "password"
    # Here type your password in the properties file
    Then Navigate to "OTPpage"
    And I wait for "30000" seconds
    
  #  Then Navigate to "OTP"
  #  Then Navigate to "OTPsend"
 #   And I wait for "40000" seconds
  #  # Here type the OTP sent to email or phone manually within 30 seconds
    Then Navigate to "skipvipaccess"
    
    And I wait for "30000" seconds
    Then Navigate to "Dontremember"
    And I wait for "10000" seconds
   Given Navigate to "ReconGroupSettings"
   Then Navigate to "ReconGroup"
   And I wait for "15000" seconds
   And I wait for "15000" seconds
   And I wait for "15000" seconds
   ######
   Then Navigate to "PlusIcon"
   And I wait for "20000" seconds
   #Here Recon group description value(RGD) should be given in the properties file
   Then select the value "FSNA_CnB_BankGL" from the dropdown "ReconGroupTypeDropdown"
   #Select the dropdown according to recon group type selection
   Then select the value " 9999" from the dropdown "RegionID"
   Then select the value " 269111" from the dropdown "CountryID"
   Then select the value " XMWGL" from the dropdown "EntityID"
   Then select the value " 73N1Z" from the dropdown "ProductID"
   
   
   
   # In the above four lines type the combinations that is needed to create the recon group
   Then pass your "ReconGroupDescription" in "RGD"
   #Here Recon group description value(RGD) should be given in the properties file
   Then select the value "FSNA_CnB_BankGL" from the dropdown "ReconGroupTypeDropdown"
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
   ############
    
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
   Then I type at "ReconGroupSearch" value "73N1Z-9999-269111-XMWGL"
   # Here the recon Group name is given directly in the above line
   Then I verify whether the value "73N1Z-9999-269111-XMWGL" is present in the "ReconGroupValueAfterSearch"
   # Here we are verifying whether the recon group value passed in present or not the recon Group name is given directly in the above line
   
   Then Navigate to "AddPreparer"
   Then I type at "PreparerNameTextFieldPath" value "a.pathania"
   #Here the preparer name is given directly in the above line
   And I wait for "10000" seconds
   Then Navigate to "SelectPreparerName"
   And I wait for "1000" seconds
   Then Navigate to "AddPreparerButton"
   And I wait for "10000" seconds
   
   