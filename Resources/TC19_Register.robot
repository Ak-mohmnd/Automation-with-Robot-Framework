*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/TC19_Locators.py

*** Variables ***


*** Keywords ***
Open My Browser
    [Arguments]     ${url}      ${browser}
    open browser    ${url}      ${browser}
    maximize browser window
    sleep   2

Click_RegisterLink
    click link    ${LNK_Register}

Enter_FirstName
    [Arguments]  ${F_Name}
    input text   ${TXT_FirstName}    ${F_Name}

Enter_LastName
    [Arguments]  ${L_Name}
    input text   ${TXT_LastName}    ${L_Name}

Enter_Phone
    [Arguments]  ${Phone}
    input text   ${TXT_Phone}    ${Phone}

Enter_Email
    [Arguments]  ${Email}
    input text   ${TXT_Email}    ${Email}

Enter_Address
    [Arguments]  ${Address}
    input text   ${TXT_Address}    ${Address}

Enter_Country
    [Arguments]  ${Country}
    select from list by label   ${DRP_Country}    ${Country}

Enter_UserName
    [Arguments]  ${Name}
    input text   ${TXT_User_Name}    ${Name}

Enter_Password
    [Arguments]  ${Password}
    input text   ${TXT_UserPassword}    ${Password}

Enter_ConfirmPass
    [Arguments]  ${ConfirmPass}
    input text   ${TXT_ConfirmPass}    ${ConfirmPass}

Click_Register
    click button    ${BTN_Register}

Verify Successful_Login
    page should contain     Thank you for registering.

Close My Browser
    close all browsers

