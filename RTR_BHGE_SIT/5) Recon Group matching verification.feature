Feature: Recon Group matching verification

 Scenario: Checking if all the fields are present in Recon Group Matching
    
   Given Open browser in incognito and navigate to "https://reconadvisor3-test.accenture.com/sit/"
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
    
   #  Then select the value "10-2020" from the dropdown "AccountingPeriods"
      And I wait for "10000" seconds 
    # Then Navigate to "InProgress"
    And I wait for "10000" seconds 
    Then  I enter value "398108-S170" in "SearchBox" field
    # Here type the recon group name
    And I wait for "10000" seconds     
    Then Navigate to "ArrowButton"
    And I wait for "10000" seconds
    And I wait for "10000" seconds
    
   Then Navigate to "Allitemsleftfilter"
    And I wait for "6000" seconds
    Then I Click on "TransactionAmount"
    And I wait for "3000" seconds
    Then  I enter value "-22.08" in "Searchboxfilter" field
  #  # Enter the line item's Amount value for which Match has to be performed
    And I wait for "2000" seconds
    Then Navigate to "FilterApply"
    And I wait for "1000" seconds
    Then I Click on "MatchRecordLeft"
    And I wait for "3000" seconds
    Then I Click on "Allitemsrightfilter"
    And I wait for "1000" seconds
    Then I Click on "TransactionAmountRight2"
   And I wait for "3000" seconds
    Then  I enter value "-22.08" in "Searchboxfilterright" field
 #   # Enter the line item's Amount value for which Match has to be performed
  And I wait for "2000" seconds
    Then I Click on "FilterApplyRight"
    And I wait for "1000" seconds
    Then I Click on "MatchRecordRight"
    And I wait for "1000" seconds
    Then I Click on Match button and verify if it is working
    And I wait for "5000" seconds  
    
  #   #Click on Matched Items Tab
  #  Then Navigate to "MatchedItemsTab"
 #   And I wait for "5" seconds
  #  Then I Click on "MatchedAlreadyItem"
  #  Then I Click on "UnmatchButtons"
    
    #Checking UnMatch button functionality
    Scenario: Unmatch Functionality
   Then I Verify Unmatch button functionality
    And I wait for "10000" seconds
   And I wait for "10000" seconds
    
 #   #Checking Dismiss button functionality in Suggested tab
  # Scenario: Dismiss Functionality
  #  Then Navigate to "SuggestedItemsTab"
 #  And I wait for "2000" seconds
 #   Then I Verify dismiss button functionality
     
  #  #Checking Match button in Suggested items tab
   # And I wait for "9000" seconds
  #  Then I Verify match button functionality in suggested items tab
  # And I wait for "5000" seconds
    
 #   #Generate Summary
 		Then Navigate to "AllItemsTab"
 		 And I wait for "15000" seconds
 		 Then Navigate to "GenerateSUmmaryButton1"
 #	 # 	Then Navigate to "RegenerateSummaryButton"
 	  	And I wait for "70000" seconds
   		And I wait for "70000" seconds
   		And I wait for "70000" seconds
   		And I wait for "90000" seconds
 	  Then I will verify whether the file "398108-S170" has been downloaded after clicking on the link "DownloadSummarybuttonnew"
 		
 	#Manual Classification
 	 Scenario: Classify and Remediate
 	 And I wait for "10000" seconds	
 	  Then I Click on "MatchRecordLeft"
    And I wait for "3000" seconds
    Then I Click on "ClassifyANdRemediate1"
    And I wait for "6000" seconds
    
   Then select the value "Reconciling Items" from the dropdown "ClassficationTag9" 
 #BHGEUAT-  Then select the value "ICAR" from the dropdown "ClassificationBHGEUAT" 
    And I wait for "8000" seconds
   
   
    Then  I enter value "AutomationTEsting" in "RemediationPlans" field
    #Then  I enter value "AutomationTEsting Comments" in "OtherCommentsText" field
   Then I Click on "ClassifyANdRemediateSaveButton"
     And I wait for "20000" seconds
     

   
 		
 	#Checking SendForReview button functionality
 	Scenario: Send for review
    Then Navigate to "SendForReview"
     And I wait for "10000" seconds
     Then Navigate to "SendForReviewContinue"
     And I wait for "10000" seconds
    Then Navigate to "BacktoDashboard"
     And I wait for "15000" seconds
     Then I refresh the page
    Then  I enter value "398108-S170" in "SearchBox" field
     Then Navigate to "SentForReviewTab"
    And I wait for "10000" seconds
  		Then I verify if "398108-S170" is present in Sent for review
  		And I wait for "2000" seconds