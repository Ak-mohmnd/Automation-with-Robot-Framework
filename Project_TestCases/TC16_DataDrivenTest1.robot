*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/TC16_Login_Resources.robot

Suite Setup  Open My Browser
Suite Teardown  Close My Browser
Test Template  Invalid Login


*** Test Cases ***
#Data from User                  #Username               #Password
Right User and Empty Password    ak.mohmnd@gmail.com     ${empty}
Right User and wrong Password    ak.mohmnd@gmail.com     zxcvbnm
Wrong User and right Password    ak.moh123@gmail.com     1234567890
Wrong User and wrong Password    ak.moh123@gmail.com     zxcvbnm
wrong User and empty Password    ak.moh234@gmail.com     ${empty}



*** Keywords ***
Invalid Login
    [Arguments]  ${UserName}    ${UserPassword}

    Input UserName      ${UserName}
    Input Password      ${UserPassword}
    Click Login Button
    Error Message should be visible