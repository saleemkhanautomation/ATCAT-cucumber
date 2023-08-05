Feature: Generate SUmmary

 Scenario: Checking if Generate summary is working
    
    Given Open browser in incognito and navigate to "https://reconadvisor3-test.accenture.com/sit"
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
     
    Then select the value " 10-2020" from the dropdown "AccountingPeriods"
    And I wait for "10000" seconds 
   # Then Navigate to "InProgress"
    Then  I enter value "101003-201001" in "SearchBox" field
    And I wait for "10000" seconds
     Then Navigate to "SelectReconGroupDashboard"
     Then Navigate to "GenerateSummaryBtn"
     And I wait for "10000" seconds
     Then Navigate to "SelectReconGroupDashboard"
      Then Navigate to "DownloadSummaryBtn"
      Then I will verify whether the file "101003-201001" has been downloaded after clicking on the link "DownloadSummaryButton"
       
     
     
     
     
     
     