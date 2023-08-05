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
  #  Then Navigate to "skipvipaccess"
    
    And I wait for "30000" seconds
    Then Navigate to "Dontremember"
    And I wait for "30000" seconds
   
  
 
    Then I enter value "390088-S561" in "SearchBox" field
    #Enter the Recon group which will be used for Validation
    And I wait for "6000" seconds
     And I wait for "6000" seconds
    Then Navigate to "InProgress"
    And I wait for "6000" seconds
    Then Navigate to "ArrowButton"
    And I wait for "6000" seconds
    Then Navigate to "OpenItemsTab"
    And I wait for "2000" seconds
  #   Then Navigate to "DocumentsFilterNew"
   # And I wait for "7000" seconds
    #Then Navigate to "DocumentNumberFilter"
   # And I wait for "5000" seconds
    # Then I enter value "100233076" in "Searchboxfilter" field
    # And I wait for "5000" seconds
    # Then Navigate to "FilterApplyRight"
      And I wait for "5000" seconds
    Then I Click on "OpenItemsFirstRecord"
    And I wait for "2000" seconds
    Then Navigate to "ViewBackupsBtn"
    #Here for now click on okay button if a pop-up appears
    And I wait for "5000" seconds
    # Then Navigate to "UploadButton"
    # Then Run AutoIT ReconGroupBulkUpdatePreparers
    # Here we are uploading the template
    #  And I wait for "10000" seconds
    Then Navigate to "ApplytoalllineitemsoftheDocuments"
    Then Navigate to "ProfitCenterMatched"
    Then Navigate to "DescriptionMatched"
    Then Navigate to "AmountMatched"
    Then select the value " Lacks Support" from the dropdown "ICARDrop"
    And I wait for "4000" seconds
  #  Then select the value " L" from the dropdown "ICARDrop"
  #  Then select the value " ICAR" from the dropdown "ResponsibleDrop"
  #  And I wait for "4000" seconds
    Then select the value " Y" from the dropdown "DragandDrop"
    And I wait for "4000" seconds
    Then I enter value "testing" in "PlanValidation" field
    And I wait for "4000" seconds
    Then Navigate to "SaveandProceedBtn"
    Then I check the title of the page


  