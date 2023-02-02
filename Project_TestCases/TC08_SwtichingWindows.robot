*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}      https://www.google.com/
${url1}     https://www.bing.com/
${url2}     https://www.youtube.com/

*** Test Cases ***
Swtiching Multi_Windows
    open browser    ${url}  ${browser}
    maximize browser window
    sleep   2

    open browser    ${url1}  ${browser}
    maximize browser window
    sleep   2

    open browser    ${url2}  ${browser}
    maximize browser window
    sleep   2

    switch browser  1
    ${Title1}=   get title
    log to console  ${Title1}
    sleep   2

    switch browser  2
    ${Title2}=   get title
    log to console  ${Title2}
    sleep   2

    switch browser  3
    ${Title3}=   get title
    log to console  ${Title3}
    sleep   2

    close all browsers

*** Keywords ***