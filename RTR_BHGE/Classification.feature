Feature: Classification

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

  Scenario: Creation, Update and Delete Classification
    And I wait for element to be visible "ReconSettings"
    Then Navigate to "ReconSettings"
    Then Navigate to "Classification"
    Then I wait for "5000" seconds
    Then Navigate to "Dataplusclassification"
    Then I type at "ClassificationGroupName" value "Classification"
    Then I type at "ClassificationDescription" value "Classification Description"
    Then I type at "ClassificationValue" value "Amount"
    Then I type at "ClassificationValueDescription" value "Amount Description"
    # In the above 4 lines, type the classification name and classification value along with description accordingly
    Then Navigate to "ClassificationMore"
	  Then I check "DeleteClassification" is enabled
	  And I wait for "10000" seconds
    Then Navigate to "ClassificationSave"
    
    And I wait for "5000" seconds
    Then I check if it Classification saved Successfully
    Then Navigate to "Configureclassification"
    And I wait for "5000" seconds
    Then I search for "BSTexample7" and "GLexample7"
    #Here type the datasets that needs to be configured for classification
    Then Navigate to "ConfigureClassificationSave"
    
    
    And I wait for "4000" seconds
    Then Navigate to "UpdateClassification"
    And I wait for "2000" seconds
    Then I Verify Update Classification Functionality
    
    
    And I wait for "4000" seconds
    Then I Verify Delete Classification Functionality
        
   Scenario: Rule creation for Classification
    And I wait for "5000" seconds
    Then Navigate to "ReconGroupTypeLink"
    And I wait for "5000" seconds
    Then I type at "ReconGroupSearch" value "RG20"
    # Here type the value of the Recon Group type for which classification workflow needs to be configured
    Then Navigate to "ReconGroupConfigureWorkflow"
    And I wait for "5000" seconds
    Then Navigate to "ReconGroupEditWorkflow"
    And I wait for "2000" seconds
    Then Navigate to "PlusFlow"
    And I wait for "2000" seconds
    Then I will select " Classification" from Action dropdown
		Then I will select " BSTexample7" from LeftDataSet dropdown
		# Here type the dataset that needs to be selected in the first dropdown
		Then Navigate to "Records"
		And I wait for "1000" seconds
		Then Navigate to "UnmatchValue"
		# Here type either Match,Umatch or All accordingly
 		Then I will select " GLexample7" from RightDataSet dropdown
 		# Here type the dataset that needs to be selected in the third dropdown
    Then Navigate to "ReconGroupWorkFlowSaveButton"
    
    Then I will click on the View Rules link
    And I wait for "3000" seconds
       
    Then Navigate to "PlusIcon"
    And I wait for "1000" seconds
    Then  I enter value "curecncy,amount" in "ClassificationRuleName" field
    Then  I enter value "ruleANDclaas" in "ClassificationRuleWhen" field
    # In the above two lines type the rules and when for the classification
    And I wait for "1000" seconds
    Then Navigate to "ReconGroupTypeRuleConfirmButton"
    Then Navigate to "BackButton"
    And I wait for "2000" seconds
    Then Navigate to "BacktoReconGroupType"
    