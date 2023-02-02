*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
LaunchBrowser
    [Arguments]  ${Appurl}  ${Appbrowser}
    open browser    ${Appurl}  ${Appbrowser}
    maximize browser window
    ${Title}=   get title
    [Return]  ${Title}