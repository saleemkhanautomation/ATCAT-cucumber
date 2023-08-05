Feature: Recon Type Creation

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

  Scenario: Create Recon type
    Given Navigate to "ReconGroupSettings"
    Then Navigate to "ReconGroupTypee"
    And I wait for "3000" seconds
    Then Navigate to "PlusIcon"
    And I wait for "3000" seconds
    Then I type at "Name1path" value "RGT20"
    # Here type the recon type name directly in the above line
    And I wait for "2000" seconds
    Then Navigate to "DropdownReconType"
    #Here select the recon type from the dropdown MANUALLY
    And I wait for "4000" seconds
    Then Navigate to "PlusIcon"
    And I wait for "5000" seconds
    Then select the value "BSTexample7" from the dropdown "DataSet1Dropdown"
    And I wait for "2000" seconds
    Then select the value "GLexample7" from the dropdown "DataSet2Dropdown"
    # Here in the above 2 lines type the datasets name that needs to selected from the dropdown
    And I wait for "3000" seconds
    
  Scenario: Create Matching Settings
    Given Navigate to "AddMatchingSettingsButton"
    Then Navigate to "AddMatchingSettingsCheckbox1"
    Then Navigate to "AddMatchingSettingsCheckbox2"
    Then Navigate to "AddMatchingSettingsCheckbox3"
    Then Navigate to "AddButton"
    And I wait for "5000" seconds
    
    #bank vs bank
    Then select the value "OriginalAmount" from the dropdown "MatchSettingsMatchField1Dropdown1"
    And I wait for "2000" seconds
    Then select the value "OriginalAmount" from the dropdown "MatchSettingsMatchField1Dropdown2"
    And I wait for "2000" seconds
    Then select the value "AccountType" from the dropdown "MatchSettingsUnitField1Dropdown1"
    And I wait for "2000" seconds
    Then select the value "AccountType" from the dropdown "MatchSettingsUnitField1Dropdown2"
    And I wait for "2000" seconds
    # In the above 4 lines type the dropdown values of Match and Unit field
    Then I click on "opposite" button in the sign field of First Match Settings
    #Here value should be either opposite or same
    Then I type at "MatchSettingsThreshold1" value "1000"
    And I wait for "2000" seconds
    Then I click on "permatch" button in the First Record Variance
    #Here value should be either aggregate or permatch
    And I wait for "2000" seconds
   
    #bank vs gl
    Then select the value "OriginalAmount" from the dropdown "MatchSettingsMatchField2Dropdown1"
    And I wait for "2000" seconds
    Then select the value "Amountindoccurr" from the dropdown "MatchSettingsMatchField2Dropdown2"
    And I wait for "2000" seconds
    Then select the value "BankName" from the dropdown "MatchSettingsUnitField2Dropdown1"
    And I wait for "2000" seconds
    Then select the value "Reference" from the dropdown "MatchSettingsUnitField2Dropdown2"
    And I wait for "2000" seconds
    # In the above 4 lines type the dropdown values of Match and Unit field
    Then I click on "same" button in the sign field of Second Match Settings
    #Here value should be either opposite or same
    Then I type at "MatchSettingsThreshold2" value "1000"
    And I wait for "2000" seconds
    Then I click on "permatch" button in the Second Record Variance
    #Here value should be either aggregate or permatch
    And I wait for "2000" seconds
    Then select the value "GLexample7" from the dropdown "MatchSettingsPostVariance"
    And I wait for "2000" seconds
    
    #gl vs gl
    Then select the value "Amountindoccurr" from the dropdown "MatchSettingsMatchField3Dropdown1"
    And I wait for "2000" seconds
    Then select the value "Amountindoccurr" from the dropdown "MatchSettingsMatchField3Dropdown2"
    And I wait for "2000" seconds
    Then select the value "Reference" from the dropdown "MatchSettingsUnitField3Dropdown1"
    And I wait for "2000" seconds
    Then select the value "DocumentType" from the dropdown "MatchSettingsUnitField3Dropdown2"
    And I wait for "2000" seconds
    # In the above 4 lines type the dropdown values of Match and Unit field
    Then I click on "opposite" button in the sign field of Third Match Settings
    #Here value should be either opposite or same
    Then I type at "MatchSettingsThreshold3" value "1000"
    And I wait for "2000" seconds
    Then I click on "permatch" button in the Third Record Variance
    #Here value should be either aggregate or permatch
    And I wait for "2000" seconds
    Then Navigate to "ReconGroupSaveButton"
    And I wait for "5000" seconds
    
    Then I verify whether the value "RGT10" is present in the "ReconGroupTypeLocation"
    #Here pass the recon type value name directly in the above line
    And I wait for "3000" seconds
    Then Navigate to "ViewEyeIcon"
    And I wait for "6000" seconds
    Then I verify whether the value "Dataset View" is present in the "DataSetViewHeading"
    Then I verify whether the value "Matching Settings" is present in the "MatchingSettingsHeading"
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
		Then I will select " BSTexample7" from LeftDataSet dropdown
 		#Then I will select "example" from LeftRecords dropdown
 		Then I will select " GLexample7" from RightDataSet dropdown
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
   
    
    
    
    
