Feature: Creation of Validation

  Scenario: Add new validation settings
   Given Open browser in incognito and navigate to "https://reconadvisor3-dev.accenture.com/"
    And I wait for "60" seconds
    And I wait for "30000" seconds
    Then pass your "xpath1" in "email"
    And I wait for "30000" seconds
    # Here type your username in the properties file
    Then Navigate to "PasswordPage"
    And I wait for "10000" seconds
    Then pass your "passwordpath" in "password"
    # Here type your password in the properties file
    Then Navigate to "OTPpage"
    And I wait for "50000" seconds
    Then Navigate to "OTP"
    Then Navigate to "OTPsend"
    And I wait for "40000" seconds
    
    # Here type the OTP sent to email or phone manually within 30 seconds
    Then Navigate to "submitOTP"
    Then Navigate to "Dontremember"
     And I wait for "15000" seconds
   And I wait for "15000" seconds
    Given Navigate to "ReconGroupSettings"
    Then Navigate to "Validation"
    And I wait for "10000" seconds
    Then Navigate to "PlusIcon"
    Then I type at "ValidationGroupNamePath" value "Createval6"
    Then I type at "ValidationGroupDescriptionPath" value "Test1234"
    #In the above two lines pass the validation name and description directly
    Then Navigate to "ReconGroupWorkFlowSaveButton"
    And I wait for "10000" seconds


  Scenario: Configure Checklist of Validation Group
    Given I pass the validation name "Createval6" whose Configure checklist has to be selected from the validation table
    #Here pass the updated validation group name directly in the above line to configure checklist
    Then I will pass the values "Date,abc,Amount,abc,Description,abc" that needs to be added as a checklist
    # Here pass the checklists that should be added in the following form : value1,desc1,value2,desc2 etc....
     And I wait for "10000" seconds
    Then Navigate to "ReconGroupWorkFlowSaveButton"

  Scenario: Configure Datasets of Validation Group
    Given I pass the validation name "Createval6" whose Configure datasets has to be selected from the validation table
    #Here pass the validation group name directly in the above line to configure Dataset
     And I wait for "10000" seconds
    Then I type at "ValidationDatasetsSearch" value "Openitemvalidation_Dataset"
    # Here pass the dataset name that needs to be selected for validation in the above line
    Then Navigate to "ValidationDatasetsCheckbox"
    And I wait for "10000" seconds
    Then Navigate to "ReconGroupWorkFlowSaveButton"

  Scenario: Update Validation Group
    Given I pass the validation name "Createval6" that has to be updated from the validation table
    #Here pass the validation group name directly in the above line to update it
    Then I type at "ValidationGroupNamePath" value "321"
    Then I type at "ValidationGroupDescriptionPath" value "msk"
    #In the above two lines pass the new value for validation name and description directly that needs to be updated
    Then Navigate to "ReconGroupWorkFlowSaveButton"
    
    
     Scenario: Delete Validation Group
    Given I pass the validation name "Createval6321" to be deleted from the validation table
    #Here pass the validation group name directly in the above line to delete it
    And I wait for "10000" seconds
    
    
     Scenario: View BackUp button
     And I wait for "10000" seconds
    Then Navigate to "Dashboard"
    And I wait for "10000" seconds
     And I wait for "10000" seconds
      Then Navigate to "InProgress"
    Then I enter value "XMWR0-7205-228530-XZWYR" in "SearchBox" field
    #Enter the Recon group which will be used for Validation
   And I wait for "10000" seconds
  #  Then Navigate to "InProgress"
    And I wait for "10000" seconds
    Then Navigate to "ArrowButton"
     And I wait for "10000" seconds
      And I wait for "10000" seconds
    Then Navigate to "OpenItemsTab"
    And I wait for "10000" seconds
    Then I Click on "OpenItemsFirstRecord"
    And I wait for "10000" seconds
    Then Navigate to "ViewBackupsBtn"
    #Here for now click on okay button if a pop-up appears
     And I wait for "10000" seconds
    # Then Navigate to "UploadButton"
    # Then Run AutoIT ReconGroupBulkUpdatePreparers
    # Here we are uploading the template
    #  And I wait for "10000" seconds
    Then Navigate to "ApplytoalllineitemsoftheDocuments"
    Then Navigate to "ProfitCenterMatchedDev"
    Then Navigate to "DescriptionMatchedDev"
    Then Navigate to "AmountMatchedDev"
  #  Then select the value " L" from the dropdown "TaggingBackup"
    And I wait for "10000" seconds
   # Then select the value " GL - CB" from the dropdown "ResponsebleBackup"
    And I wait for "4000" seconds
    
    Then I enter value "testing" in "PlanValidation" field
     And I wait for "10000" seconds
    Then Navigate to "SaveandProceedBtn"
    Then I check the title of the page

	
 
    
	