*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}    https://demo.automationtesting.in/Windows.html


*** Test Cases ***
TabbedWindows
    open browser    ${url}  ${browser}
    maximize browser window
    sleep   2

#TabbedWindows
    click element   xpath://*[@id="Tabbed"]/a/button
    switch window   title=Selenium
    sleep   2
    click element   xpath://*[@id="main_navbar"]/ul/li[4]/a/span
    sleep   3

    close all browsers


*** Keywords ***