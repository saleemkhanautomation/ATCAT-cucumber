Feature: DashBoard

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
    
    Then I Verify if "HighFilter" Field is present 
    Then I Verify if "MediumFilter" Field is present
    Then I Verify if "LowFilter" Field is present 
    Then I Verify if "AccountingPeriodDD" Field is present 
    Then I Verify if "ReconGroupType" Field is present
    Then I Verify if "InProgressTab" Field is present
    Then I Verify if "SentForReviewTab" Field is present
    Then I Verify if "ExporttoExcel" Field is present 
    Then I Verify if "SortByDD" Field is present 
    Then I Verify if "GenerateSummaryBtn" Field is present 
    Then I Verify if "DownloadSummaryBtn" Field is present 
    Then I Verify if "ReconGroupRecordGrid" Field is present 
       
    Then I enter "6335" in search and verify search result
    #Here we give the Recon Group name directly to check if its present or not
    Then I verify Recon Group Type search
    
    Then I will verify whether the file "ReconciliationSummary-06-2020" has been downloaded after clicking on the link "ExporttoExcel"
    #Here give the Excel sheet name directly in the above line to check if export to excel is working correctly
    And I wait for "60" seconds
    Then i close the browser