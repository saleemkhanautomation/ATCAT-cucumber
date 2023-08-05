@ReconGroupMatching
Feature: Recon Group matching verification

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

  Scenario: Checking if all the fields are present in Recon Group Matching
    Then I enter value "XMQ0D-6345-102101-XMP52" in "SearchBox" field
    # Here type the recon group name
    And I wait for "10000" seconds
    Then Navigate to "ArrowButton"
    And I wait for "10000" seconds
    Then I Verify if "AccountingPeriodDD" Field is present
    Then I Verify if "AllItemsTab" Field is present
    Then I Verify if "OpenItemsTab" Field is present
    Then I Verify if "MatchedItemsTab" Field is present
    Then I Verify if "SuggestedItemsTab" Field is present
    Then I Verify if "SendForReview" Field is present
    #Click on Matched Items Tab
    Then Navigate to "MatchedItemsTab"
    And I wait for "5" seconds
    Then I Verify if "UnMatchButton" Field is present
    #Matching comment verification
    Then I Verify if Matching Comment is present
    #CLick on Suggested Items Tab
    Then Navigate to "SuggestedItemsTab"
    And I wait for "5000" seconds
    Then I Verify if "DismissButton" Field is present
    Then I Verify if "MatchButton" Field is present
    Then I Verify if "PredefinedRulesButton" Field is present
    Then I Verify if "ConfirmRuleButton" Field is present
    And I wait for "2000" seconds
    #Checking Match button functionality
    Then Navigate to "AllItemsTab"
    And I wait for "3000" seconds
    Then Navigate to "Allitemsleftfilter"
    And I wait for "6000" seconds
    Then I Click on "TransactionAmount"
    And I wait for "3000" seconds
    Then I enter value "126.57" in "Searchboxfilter" field
    # Enter the line item's Amount value for which Match has to be performed
    And I wait for "2000" seconds
    Then Navigate to "FilterApply"
    And I wait for "1000" seconds
    Then I Click on "MatchRecord"
    And I wait for "3000" seconds
    Then I Click on "Allitemsrightfilter"
    And I wait for "1000" seconds
    Then I Click on "TransactionAmountRight"
    And I wait for "3000" seconds
    Then I enter value "63.05" in "Searchboxfilterright" field
    # Enter the line item's Amount value for which Match has to be performed
    And I wait for "2000" seconds
    Then I Click on "FilterApplyRight"
    And I wait for "1000" seconds
    Then I Click on "MatchRecordRight"
    And I wait for "1000" seconds
    Then I Click on Match button and verify if it is working
    And I wait for "5000" seconds
    #Checking UnMatch button functionality
    Then I Verify Unmatch button functionality
    And I wait for "5000" seconds
    #Checking Dismiss button functionality in Suggested tab
    Then Navigate to "SuggestedItemsTab"
    And I wait for "2000" seconds
    Then I Verify dismiss button functionality
    #Checking Match button in Suggested items tab
    And I wait for "9000" seconds
    Then I Verify match button functionality in suggested items tab
    And I wait for "5000" seconds
    Then Navigate to "AllItemsTab"
    #	Then Navigate to "GenerateSummaryButton"
    #	And I wait for "50000" seconds
    #	And I wait for "80000" seconds
    #	Then I will verify whether the file "XMSXT-7250-102101-XMP52" has been downloaded after clicking on the link "DownloadSummaryButton"
    #Checking SendForReview button functionality
    Then Navigate to "SendForReview"
    And I wait for "5000" seconds
    Then Navigate to "BacktoDashboard"
    And I wait for "10000" seconds
    Then I refresh the page
    Then I enter value "XMQ0D-6345-102101-XMP52" in "SearchBox" field
    Then Navigate to "SentForReviewTab"
    And I wait for "2000" seconds
    Then I verify if "XMQ0D-6345-102101-XMP52" is present in Sent for review
    And I wait for "2000" seconds
