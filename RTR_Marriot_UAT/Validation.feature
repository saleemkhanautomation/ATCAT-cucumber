Feature: Creation of Validation

  Scenario: Add new validation settings
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
     Then Navigate to "Dontremember"
    And I wait for "30000" seconds
   
   Given Navigate to "ReconGroupSettings"
    Then Navigate to "Validation"
    And I wait for "10000" seconds
    And I wait for "10000" seconds
    Then Navigate to "PlusIcon"
    Then I type at "ValidationGroupNamePath" value "Test444"
    Then I type at "ValidationGroupDescriptionPath" value "Test1234"
    #In the above two lines pass the validation name and description directly
    Then Navigate to "ReconGroupWorkFlowSaveButton"
    And I wait for "5000" seconds
	And I wait for "10000" seconds
	
  

  Scenario: Configure Checklist of Validation Group
    Given I pass the validation name "Test444" whose Configure checklist has to be selected from the validation table
    #Here pass the updated validation group name directly in the above line to configure checklist
    Then I will pass the values "Date,abc,Amount,abc,Description,abc" that needs to be added as a checklist
    # Here pass the checklists that should be added in the following form : value1,desc1,value2,desc2 etc....
    And I wait for "3000" seconds
    Then Navigate to "ReconGroupWorkFlowSaveButton"
    And I wait for "10000" seconds

  Scenario: Configure Datasets of Validation Group
    Given I pass the validation name "Test444" whose Configure datasets has to be selected from the validation table
    #Here pass the validation group name directly in the above line to configure Dataset
    And I wait for "8000" seconds
    Then I type at "ValidationDatasetsSearch" value "TestSanity12"
    # Here pass the dataset name that needs to be selected for validation in the above line
    Then Navigate to "ValidationDatasetsCheckbox"
    And I wait for "3000" seconds
    Then Navigate to "ReconGroupWorkFlowSaveButton"
     And I wait for "3000" seconds
    Then Navigate to "VAlidationBackButton"
    And I wait for "10000" seconds

  Scenario: Update Validation Group
    Given I pass the validation name "Test444" that has to be updated from the validation table
    #Here pass the validation group name directly in the above line to update it
    Then I type at "ValidationGroupNamePath" value "sda"
    Then I type at "ValidationGroupDescriptionPath" value "sdas321"
    #In the above two lines pass the new value for validation name and description directly that needs to be updated
    Then Navigate to "ReconGroupWorkFlowSaveButton"

	Scenario: Delete Validation Group
    Given I pass the validation name "Test444sda" to be deleted from the validation table
    #Here pass the validation group name directly in the above line to delete it
    And I wait for "5000" seconds


  