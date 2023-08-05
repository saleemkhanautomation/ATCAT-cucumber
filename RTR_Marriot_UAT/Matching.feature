Feature: Recon Group matching verification

 Scenario: Checking if all the fields are present in Recon Group Matching
    
    Given Open browser in incognito and navigate to "https://reconadvisor3-test.accenture.com/marriott-uat/"
    And I wait for "60" seconds
    And I wait for "30000" seconds
    Then pass your "xpath1" in "email"
    And I wait for "30000" seconds
    # Here type your username in the properties file
    Then Navigate to "PasswordPage"
    And I wait for "30000" seconds
    Then pass your "passwordpath" in "password"
    # Here type your password in the properties file
    Then Navigate to "OTPpage"
    And I wait for "30000" seconds
    Then Navigate to "OTP"
    Then Navigate to "OTPsend"
    And I wait for "40000" seconds
    # Here type the OTP sent to email or phone manually within 30 seconds
    Then Navigate to "submitOTP"
    Then Navigate to "Dontremember"
     And I wait for "15000" seconds
   And I wait for "15000" seconds    
    
   #  Then select the value "10-2020" from the dropdown "AccountingPeriods"
      And I wait for "10000" seconds 
     Then Navigate to "InProgress"
    And I wait for "10000" seconds 
    Then  I enter value "XMWGL-9950-269111-ZQWXM" in "SearchBox" field
    # Here type the recon group name
    And I wait for "10000" seconds     
    Then Navigate to "ArrowButton"
    And I wait for "10000" seconds
    And I wait for "10000" seconds
  #   #Click on Matched Items Tab
  #  Then Navigate to "MatchedItemsTab"
 #   And I wait for "5" seconds
  #  Then I Click on "MatchedAlreadyItem"
  #  Then I Click on "UnmatchButtons"
    
     Then Navigate to "Allitemsleftfilter"
    And I wait for "6000" seconds
    Then I Click on "TransactionAmount"
    And I wait for "3000" seconds
    Then  I enter value "-12.75" in "Searchboxfilter" field
    # Enter the line item's Amount value for which Match has to be performed
    And I wait for "2000" seconds
    Then Navigate to "FilterApply"
    And I wait for "1000" seconds
    Then I Click on "MatchRecordLeft"
    And I wait for "3000" seconds
    Then I Click on "Allitemsrightfilter"
    And I wait for "1000" seconds
    Then I Click on "TransactionAmountRight"
    And I wait for "3000" seconds
  #  Then  I enter value "5805" in "Searchboxfilterright" field
    # Enter the line item's Amount value for which Match has to be performed
    And I wait for "2000" seconds
 #   Then I Click on "FilterApplyRight"
    And I wait for "1000" seconds
    Then I Click on "MatchRecordRight"
    And I wait for "1000" seconds
    Then I Click on Match button and verify if it is working
    And I wait for "5000" seconds