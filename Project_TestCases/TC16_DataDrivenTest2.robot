*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/TC16_Login_Resources.robot
Library     DataDriver  ../TestData/Data_Test.xlsx      sheet_name=Sheet1

Suite Setup  Open My Browser
Suite Teardown  Close My Browser
Test Template  Invalid Login

*** Test Cases ***
LoginTestWithExcel using ${UserName} and ${UserPassword}


*** Keywords ***
Invalid Login
    [Arguments]  ${UserName}    ${UserPassword}

    Input UserName      ${UserName}
    Input Password      ${UserPassword}
    Click Login Button
    Error Message should be visible