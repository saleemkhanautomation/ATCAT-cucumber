@ReconType
Feature: Recon Type

Scenario: Create Recon type
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
    And I wait for "30000" seconds
    
    Given Navigate to "ReconGroupSettings"
     And I wait for "10000" seconds
    Then Navigate to "ReconGroupTypee"
    And I wait for "3000" seconds
    And I wait for "30000" seconds
    Then Navigate to "PlusIcon"
    And I wait for "3000" seconds
    Then I type at "Name1path" value "typerecon"
    # Here type the recon type name directly in the above line
    And I wait for "2000" seconds
  #  Then Navigate to "DropdownReconType"
    ##Here select the recon type from the dropdown MANUALLY
    And I wait for "4000" seconds
     And I wait for "30000" seconds
    Then Navigate to "PlusIcon"
    And I wait for "5000" seconds
    Then select the value "GenralLSanity12" from the dropdown "DataSet1Dropdown"
    And I wait for "2000" seconds
    Then select the value "BankkSanit12" from the dropdown "DataSet2Dropdown"
    # Here in the above 2 lines type the datasets name that needs to selected from the dropdown
    And I wait for "3000" seconds
    Then Navigate to "ReconGroupSaveButton"
    And I wait for "5000" seconds
     And I wait for "30000" seconds
     
    Then I verify whether the value "typerecon" is present in the "ReconGroupTypeLocation"
    #Here pass the recon type value name directly in the above line
    And I wait for "3000" seconds
    Then Navigate to "ViewEyeIcon"
    And I wait for "6000" seconds
  #  Then I verify whether the value "Dataset View" is present in the "DataSetViewHeading"
   # Then I verify whether the value "Matching Settings" is present in the "MatchingSettingsHeading"
    Then Navigate to "BacktotheRecongroupType"
    And I wait for "6000" seconds
    
   Scenario: Configure the workflow of the Recon Group type
    Then Navigate to "ReconGroupConfigureWorkflow"
    And I wait for "5000" seconds
    Then Navigate to "ReconGroupEditWorkflow"
    And I wait for "2000" seconds
    Then Navigate to "PlusFlow"
    And I wait for "2000" seconds
    Then I will select " Matching" from Action dropdown
		Then I will select " GenralLSanity12" from LeftDataSet dropdown
 		#Then I will select "example" from LeftRecords dropdown
 		Then I will select " BankkSanit12" from RightDataSet dropdown
 		#Then I will select "example" from RightRecords dropdown
 		# In the above 5 lines type the values that needs to be selected from 5 dropdown fields for Workflow creation
    Then Navigate to "ReconGroupWorkFlowSaveButton"
    
   Scenario: Create Rule
    Then I will click on the View Rules link
    And I wait for "3000" seconds
    Given I will verify the header columns in the "Recon type rules" page from "ReconTypeRules" row
    And I wait for "5000" seconds
    Then Navigate to "PlusIcon"
    And I wait for "1000" seconds
    Then pass your "ReconGroupTypeRuleName" in "RuleName"
    Then pass your "ReconGroupTypeWhen" in "RuleWhen"
    Then pass your "ReconGroupTypeThen" in "RuleThen"
    Then pass your "ReconGroupTypeThreshold" in "RuleThreshold"
    # In the above 4 lines, type the rule name that should be given for the workflow created in the properties file
    Then Navigate to "ReconGroupTypeMatchingType"
    Then Navigate to "ReconGroupTypeRuleConfirmButton"
    Then Navigate to "BackButton"
    And I wait for "2000" seconds
    Then Navigate to "BacktoReconGroupType"
    And I wait for "10000" seconds
    
    
