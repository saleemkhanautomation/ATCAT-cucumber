Feature: Carry Forward

  Scenario: Checking if carry forward is working
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
    Then select the value "01-2021" from the dropdown "AccountingPeriods"
    And I wait for "10000" seconds
    Then I enter value "M615-390188" in "SearchBox" field
    And I wait for "10000" seconds
    Then Navigate to "SentForReviewTabDashboard"
    And I wait for "10000" seconds
    Then I check "M615-390188" is present or not
    And I wait for "10000" seconds
    Then select the value "02-2021" from the dropdown "AccountingPeriods"
    And I wait for "10000" seconds
    # Then Navigate to "InProgress"
    And I wait for "10000" seconds
    Then Navigate to "ArrowButton"
    And I wait for "10000" seconds
    And I wait for "10000" seconds
    Then I verify All Items Counts contain "341" items
