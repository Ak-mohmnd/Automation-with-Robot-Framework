*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/TC19_Login.robot

*** Variables ***
${browser}    firefox                    #For to run at backend side, we can use headlessfirefox
${url}      https://demo.guru99.com/test/newtours/
${UserName}     abcd1234
${UserPassowrd}     123456

*** Test Cases ***
LogIn
    Open My Browser     ${url}      ${browser}
    sleep   2
    Enter_UserName  ${UserName}
    Enter_Password  ${UserPassowrd}
    sleep   2
    Click_SignIn
    sleep   2
    Verify Successful_Login
    Close My Browser

*** Keywords ***