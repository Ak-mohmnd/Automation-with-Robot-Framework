*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}      https://demo.nopcommerce.com/login

*** Keywords ***
Open My Browser
    open browser    ${url}  ${browser}
    maximize browser window
    sleep   2

Close My Browser 
    close all browsers

Open Login Page
    go to   ${url}

Input UserName
    [Arguments]     ${UserName}
    input text  id:Email    ${UserName}

Input Password
    [Arguments]  ${UserPassword}
    input text  id:Password     ${UserPassword}

Click Login Button
    click element   xpath://button[@class="button-1 login-button"]

Click Logout Link
    click link  Logout

Error Message should be visible
    page should contain     Login was unsuccessful

My Account should be visible
    page should contain     My account

