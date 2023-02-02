*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources.robot


*** Variables ***
${browser}    chrome
${url}      https://demo.guru99.com/test/newtours/


*** Test Cases ***
User_Keywords
    #LaunchBrowser                                           #User defined Keyword with no argument/parameter
    #LaunchBrowser  ${url}  ${browser}                       #User defined Keyword with arguments/parameters
    ${PageTitle}=   LaunchBrowser  ${url}  ${browser}        #User defined Keyword with arguments/parameters and return a value
    sleep   2
    log to console  ${PageTitle}
    log     ${PageTitle}
    sleep   2
    input text  name:userName   Mercury
    input text  name:password   1234.Abcd
    sleep   2

    close browser