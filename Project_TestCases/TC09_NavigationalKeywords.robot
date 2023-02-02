*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}      https://www.google.com/
${url1}     https://www.bing.com/


*** Test Cases ***
Navigational_Keywords
    open browser    ${url}  ${browser}
    maximize browser window
    sleep   2
    ${Location}=    get location
    log to console  ${Location}
    sleep   2

    go to   ${url1}                                         #go to is a keyword
    ${Location}=    get location
    log to console  ${Location}
    sleep   2

    go back                                   #go back is a keyword
    ${Location}=    get location
    log to console  ${Location}
    sleep   2


*** Keywords ***