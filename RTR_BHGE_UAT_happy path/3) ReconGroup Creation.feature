@ReconGroup
Feature: Recon Group

  Scenario: Create Recon Group
  Given Open browser in incognito and navigate to "https://reconadvisor3-test.accenture.com/bhge-uat/"
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
    And I wait for "30000" seconds
   Given Navigate to "ReconGroupSettings"
   Then Navigate to "ReconGroup"
   And I wait for "19000" seconds
   
   Then Navigate to "PlusIcon"
   And I wait for "10000" seconds
 #  Then select the value " Z915" from the dropdown "ReconGroupID1BHGE"
 #  Then select the value " Revaluing" from the dropdown "ReconGroupID2BHGE"
   Then select the value " 390188" from the dropdown "ReconGroupID5BHGE"
   Then select the value " R288" from the dropdown "ReconGroupID4BHGE"
   #Then select the value " 2035" from the dropdown "ReconGroupID5BHGE"
   #Then select the value " ZAR" from the dropdown "ReconGroupID6BHGE"
  # Then select the value " 398000" from the dropdown "ReconGroupID7BHGE"
   # In the above two lines type the combinations that is needed to create the recon group
   Then pass your "ReconGroupDescription" in "RGD"
   #Here Recon group description value(RGD) should be given in the properties file
   Then select the value "JPMorganReconciliation" from the dropdown "ReconGroupTypeDropdown"
   #Here pass the recon type value name directly in the above feature file - line 32
   Then select the value "Medium" from the dropdown "ReconGroupRiskCategory"
   Then select the value "Global" from the dropdown "ReconGroupCalender"
   Then I clear the field "ReconGroupEndWorkday"
   Then I select the end day based on current month in the path "ReconGroupEndWorkday"
   And I wait for "10000" seconds
   Then Navigate to "CreateReconGroupp"
   And I wait for "25000" seconds
   
  Scenario: Verification of header columns
   Given I will verify the header columns in the "ReconGroup" page from "ReconG" row
   And I wait for "5000" seconds
    And I wait for "10000" seconds
  Scenario: Download and Verify the Excel sheet 
   Given I will verify whether the file "Recon Group" has been downloaded after clicking on the link "ExportToExcel"
   # Here type the excel sheet name that gets downloaded
   And I wait for "5000" seconds
   And I wait for "10000" seconds
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
   Then I type at "ReconGroupSearch" value "390188-R288"
  # Here the recon Group name is given directly in the above line
   Then I verify whether the value "390188-R288" is present in the "ReconGroupValueAfterSearch"
   # Here we are verifying whether the recon group value passed in present or not the recon Group name is given directly in the above line
    And I wait for "10000" seconds
    Then Navigate to "AddPreparer"
   Then I type at "PreparerNameTextFieldPath" value "shilpa.a.tiwari"
#   #Here the preparer name is given directly in the above line
   And I wait for "1000" seconds
   Then Navigate to "SelectPreparerName"
   And I wait for "1000" seconds
   Then Navigate to "AddPreparerButton"
   And I wait for "10000" seconds
  # Then I refresh the page
  # And I wait for "50000" seconds
   