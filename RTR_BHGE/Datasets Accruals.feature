Feature: DataSets Accruals

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

  Scenario: Create Datasets of Accruals
    Then Navigate to "ReconSettings"
    Then Navigate to "DataSets"
    And I wait for "15000" seconds
    Then Navigate to "DataPlus"
    And I wait for "15000" seconds
    Then I type at "DataSetName" value "ACRexample1"
    # Here type the Accrual dataset name directly in the above line
    And I wait for "1000" seconds
    Then select the value "General Ledger" from the dropdown "DropdownDataSetType"
    And I wait for "5000" seconds
    Then I type at "FilePrefixname" value "ACR"
    # Here we need to type the Prefix that will be given to the Dataset
    Then select the value "Yes" from the dropdown "SupportingDocument"
    Then select the value "Excel" from the dropdown "SourceFormat"
    Then I type at "SourceSystem" value "SAP"
    And I wait for "5000" seconds
    Then I upload the BHGE Accruals template
    # Here we are uploading the template
    And I wait for "10000" seconds
    Then select the value "Profit Center " from the dropdown "AccrualsProfitCenter"
    Then select the value "Document No " from the dropdown "AccrualsDocumentNumber"
    Then select the value "User " from the dropdown "AccrualsUsername"
    Then select the value "Document Date " from the dropdown "AccrualsDocumentDate"
    Then select the value "Posting Date " from the dropdown "AccrualsPostingDate"
    Then select the value "Document Currency " from the dropdown "AccrualsDocumentCurrency"
    Then select the value "Amount in Doc. Currency " from the dropdown "AccrualsAmountInDocCurrency"
    Then select the value "Amount in Local Currency " from the dropdown "AccrualsAmountInLocalCurrency"
    Then select the value "Amount in Group Currency " from the dropdown "AccrualsAmountInGroupCurrency"
    Then select the value "Line Description " from the dropdown "AccrualsLineDescription"
    Then I select DocumentType as "AccrualsDefault1" and "AccrualsUniqueField1"
    Then I select DocumentType as "AccrualsDefault2" and "AccrualsUniqueField2"
    Then I select DocumentType as "AccrualsDefault3" and "AccrualsUniqueField3"
    Then I select DocumentType as "AccrualsDefault4" and "AccrualsUniqueField4"
    Then I select DocumentType as "AccrualsDefault5" and "AccrualsUniqueField5"
    Then Navigate to "AllDataCoulmns"
    Then Navigate to "DataSetSave"
    