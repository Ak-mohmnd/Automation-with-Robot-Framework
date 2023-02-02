*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}    https://testautomationpractice.blogspot.com/

*** Test Cases ***
HandlingAlerts
    open browser    ${url}  ${browser}
    maximize browser window
    sleep   2
    click element   xpath://*[@id="HTML9"]/div[1]/button
    sleep   4
    handle alert    accept                               #To accept means click on OK button in the alert box
    #handle alert    dismiss                             #To dismiss means click on Cancel button in the alert box
    #handle alert    leave                               #To leave means leave the alert box for some time
    #alert should be present     Press a button!         #To verify alert contain text

    #close browser
    #close all browsers


*** Keywords ***