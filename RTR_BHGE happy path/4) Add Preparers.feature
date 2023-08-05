@Preparers
Feature: Add Preparers to existing Recon Groups

 Scenario: Add Preparers
   Given Open browser in incognito and navigate to "https://reconadvisor3-test.accenture.com/bhge-uat/"
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
    
   Given Navigate to "ReconGroupSettings"
   Then Navigate to "ReconGroup"
   And I wait for "15000" seconds
   Then pass your "ReconGroupSearch" in "ReconGroupNames"
   #Then I type at "ReconGroupSearch" value "201008-7030"
   #Here the recon Group name is given directly in the above line
   Then Navigate to "AddPreparer"
   Then I type at "PreparerNameTextFieldPath" value "sujay.jayant.kharote"
   #Here the preparer name is given directly in the above line
   And I wait for "1000" seconds
   Then Navigate to "SelectPreparerName"
   And I wait for "1000" seconds
   Then Navigate to "AddPreparerButton"
   And I wait for "50000" seconds