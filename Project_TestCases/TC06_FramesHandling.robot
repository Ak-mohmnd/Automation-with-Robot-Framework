*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}    https://www.selenium.dev/selenium/docs/api/java/index


*** Test Cases ***
FramesHandling
    open browser    ${url}  ${browser}
    maximize browser window
    sleep   2
    click link      Frames
    sleep   2

    select frame    packageListFrame                    #Frame by Id,Name or xpath
    click link      org.openqa.selenium
    unselect frame
    sleep   2

    select frame    packageFrame
    click link      WebDriver
    unselect frame
    sleep   2

    select frame    classFrame
    #click link      Help
    click link      Index
    unselect frame
    sleep   2

    close browser
    #close all browsers


*** Keywords ***