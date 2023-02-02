*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/TC16_Login_Resources.robot
Library     DataDriver  ../TestData/Data.csv

Suite Setup  Open My Browser
Suite Teardown  Close My Browser
Test Template  Invalid Login

*** Test Cases ***
LoginTestWithCSV using ${UserName} and ${UserPassword}


*** Keywords ***
Invalid Login
    [Arguments]  ${UserName}    ${UserPassword}

    Input UserName      ${UserName}
    Input Password      ${UserPassword}
    Click Login Button
    Error Message should be visible