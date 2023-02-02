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

Enter_UserName
    [Arguments]  ${UserName}
    input text   ${TXT_UserName}    ${UserName}

Enter_Password
    [Arguments]  ${UserPassword}
    input text   ${TXT_Password}    ${UserPassword}

Click_SignIn
    click button    ${BTN_SignIn}

Verify Successful_Login
    page should contain     Login Successfully

Close My Browser
    close all browsers