*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}    https://demo.nopcommerce.com/
${url_1}    https://scholar.google.com/

*** Test Cases ***
ClossAllWindows
    open browser    ${url}  ${browser}
    maximize browser window
    sleep   2

    open browser    ${url_1}  ${browser}
    maximize browser window
    sleep   2

    #close browser
    close all browsers


*** Keywords ***