*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}      https://open-source-demo.orangehrmlive.com


*** Test Cases ***
Capture_Screen
    open browser    ${url}  ${browser}
    maximize browser window
    sleep   2
    Clear Element Text     xpath://*[@id="txtUsername"]
    input text      xpath://*[@id="txtUsername"]    Admin01
    sleep   2
    Clear Element Text     xpath://*[@id="txtPassword"]
    input text      xpath://*[@id="txtPassword"]    Admin.1234
    sleep   2

    capture element screenshot      xpath://*[@id="paneContainer"]/div/div[1]/div[2]/img    logo.png
    sleep   3
    capture page screenshot     Capture_Screen.png

*** Keywords ***