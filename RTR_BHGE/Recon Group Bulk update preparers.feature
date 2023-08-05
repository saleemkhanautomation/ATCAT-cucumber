Feature: Recon Group Bulk Update Preparers

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

  Scenario: Update preparers in Bulk
   Given Navigate to "ReconGroupSettings"
   Then Navigate to "ReconGroup"
   And I wait for "10000" seconds
   Then Navigate to "ReconGroupBulkUpdatePreparersButton"
   Then Run AutoIT ReconGroupBulkUpdatePreparers
   # Here we upload the template that has the preparers names to be updated
   And I wait for "3000" seconds