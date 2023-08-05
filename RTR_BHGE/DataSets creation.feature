Feature: Datasets creation

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

  Scenario: Create Data Sets
    #General Ledger
    And I wait for element to be visible "ReconSettings"
    Then Navigate to "ReconSettings"
    Then Navigate to "DataSets"
    And I wait for "15000" seconds
    Then Navigate to "DataPlus"
    And I wait for "15000" seconds
    Then I type at "DataSetName" value "GLexample12"
    # Here type the Accrual dataset name directly in the above line
    And I wait for "1000" seconds
    Then select the value "General Ledger" from the dropdown "DropdownDataSetType"
    And I wait for "5000" seconds
    Then I type at "FilePrefixname" value "Dem"
    # Here we need to type the Prefix that will be given to the Dataset
    Then select the value "No" from the dropdown "SupportingDocument"
    Then select the value "Excel" from the dropdown "SourceFormat"
    Then I type at "SourceSystem" value "SAP"
    And I wait for "5000" seconds
    Then I upload the BHGE Excel sheet
    # Here we are uploading the template
    And I wait for "10000" seconds
    Then select the value "Custom Date " from the dropdown "EntryDateSelect"
    Then select the value "Posting Date " from the dropdown "PostingDateSelect"
    Then select the value "Document Date " from the dropdown "DocumentDateSelect"
    Then select the value "Document No " from the dropdown "DocumentNumSelect"
    Then select the value "User " from the dropdown "UserNameSelect"
    Then select the value "Amount in Doc. Currency " from the dropdown "AmountinDocSelect"
    Then select the value "Document Currency " from the dropdown "DocumentCurrencySelect"
    Then select the value "Amount in Local Currency " from the dropdown "AmountinLocalCurrencySelect"
    Then select the value "Amount in Group Currency " from the dropdown "AmountinGroupCurrencySelect"
    Then select the value "Line Description " from the dropdown "LineDescriptionSelect"
    Then I select DocumentType as "Default1" and "Uniquefield1"
    Then I select DocumentType as "Default2" and "Uniquefield2"
    Then I select DocumentType as "Default3" and "Uniquefield3"
    Then I select DocumentType as "Default4" and "Uniquefield4"
    Then I select DocumentType as "Default5" and "Uniquefield5"
    Then I select DocumentType as "Default6" and "Uniquefield6"
    Then Navigate to "AllDataCoulmns"
    Then Navigate to "DataSetSave"
    Then I check if it saved Successfully
    
    
    #Bank Statement
    And I wait for "20000" seconds
    Then Navigate to "DataPlus"
    And I wait for "15000" seconds
    Then I type at "DataSetName" value "BSTexample1"
    # Here type the Accrual dataset name directly in the above line
    And I wait for "1000" seconds
    Then select the value "Bank Statement" from the dropdown "DropdownDataSetType"
    And I wait for "1000" seconds
    Then I type at "FilePrefixname" value "Sem"
    # Here we need to type the Prefix that will be given to the Dataset
    Then select the value "No" from the dropdown "SupportingDocument"
    Then select the value "Excel" from the dropdown "SourceFormat"
    Then I type at "SourceSystem" value "SAP"
    And I wait for "5000" seconds
    Then I upload the BHGE Excel sheet again
    # Here we are uploading the template
    And I wait for "20000" seconds
    Then select the value "Custom Date " from the dropdown "LastEntryDateSelect"
    Then select the value "Custom Date " from the dropdown "EntryDateSelects"
    Then select the value "Amount in Doc. Currency " from the dropdown "TranscationDateSelects"
    Then select the value "Line Description " from the dropdown "TransactionSelects"
    Then select the value "Custom Amount " from the dropdown "OriginalAmountSelects"
    Then I select DocumentType as "Default11" and "Uniquefield11"
    Then I select DocumentType as "Default12" and "Uniquefield12"
    Then I select DocumentType as "Default13" and "Uniquefield13"
    Then I select DocumentType as "Default14" and "Uniquefield14"
    Then I select DocumentType as "Default15" and "Uniquefield15"
    Then I select DocumentType as "Default16" and "Uniquefield16"
    Then Navigate to "AllDataCoulmns"
    Then Navigate to "DataSetSave"
    Then I check if it saved Successfully
    Then I refresh the page
    