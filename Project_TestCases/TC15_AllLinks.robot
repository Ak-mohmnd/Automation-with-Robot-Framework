*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}      https://demo.guru99.com/test/newtours/


*** Test Cases ***
Get_AllLinks
    open browser    ${url}  ${browser}
    maximize browser window
    sleep   2
    ${AllLinks}=    get element count   xpath://a
    log to console  ${AllLinks}
    sleep   2

    @{LinkLists}    create list
    FOR    ${i}    IN RANGE   1   ${AllLinks}+1
    ${LinkText}=    get text    xpath:(//a)[${i}]
    log to console  ${LinkText}
    END


*** Keywords ***