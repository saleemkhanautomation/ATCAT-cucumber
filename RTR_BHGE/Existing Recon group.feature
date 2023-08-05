@smoke
Feature: Existing Recon Group Verification

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
    
  Scenario: Create Recon Group that already exists
   Given Navigate to "ReconGroupSettings"
   Then Navigate to "ReconGroup"
   And I wait for "40000" seconds
   Then Navigate to "PlusIcon"
   And I wait for "35000" seconds
   Then select the value " ZQWXM" from the dropdown "ReconGroupID1"
   Then select the value " 9005" from the dropdown "ReconGroupID2"
   Then select the value " 620600" from the dropdown "ReconGroupID3"
   Then select the value " XVSBU" from the dropdown "ReconGroupID4"
   # In the above four lines type the combinations that is needed to create the recon group
   Then I verify whether the element "Recon Group already exists" is there in the location "ReconGroupIDExists"
   And I wait for "5000" seconds