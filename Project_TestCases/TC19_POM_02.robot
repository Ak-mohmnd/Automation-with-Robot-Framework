*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/TC19_Register.robot


*** Variables ***
${browser}    chrome                        #For to run at backend side, we can use headless chrome
${url}      https://demo.guru99.com/test/newtours/



*** Test Cases ***
Registration
    Open My Browser     ${url}      ${browser}
    sleep   2
    Click_RegisterLink
    Enter_FirstName     ACBD
    Enter_LastName      1234
    Enter_Phone     1234567890
    Enter_Email     abc00.gmail.com
    sleep   2
    Enter_Address   Toronto
    Enter_Country   CANADA
    sleep   2
    Enter_UserName  acbd12345
    Enter_Password  123456
    Enter_ConfirmPass   123456
    sleep   2
    Click_Register
    sleep   2
    Verify Successful_Login
    Close My Browser