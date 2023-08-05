Feature: Recon group Workflow configuration and Rule Creation

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
    And I wait for "5000" seconds
    
  Scenario: Search the Recon Group Type
   Then I type at "ReconGroupSearch" value "RG20"
   # Here type the recon group type whose workflow needs to be configured
   
  Scenario: Configure the workflow of the Recon Group type
    Then Navigate to "ReconGroupConfigureWorkflow"
    And I wait for "5000" seconds
    Then Navigate to "ReconGroupEditWorkflow"
    And I wait for "2000" seconds
    Then Navigate to "PlusFlow"
    And I wait for "2000" seconds
    Then I will select " Matching" from Action dropdown
		Then I will select " examplebank" from LeftDataSet dropdown
 		#Then I will select "example" from LeftRecords dropdown
 		Then I will select " example" from RightDataSet dropdown
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