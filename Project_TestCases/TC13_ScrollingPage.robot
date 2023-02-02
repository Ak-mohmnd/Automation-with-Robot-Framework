*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}      https://www.COUNTRIES-ofthe-world.com/flags-of-the-world.html



*** Test Cases ***
Scrolling_Page
    open browser    ${url}  ${browser}
    maximize browser window
    sleep   2
    execute javascript      window.scrollTo(0,1500)                     #Scroll to anypoint
    sleep   2
    scroll element into view    xpath://*[@id="content"]/div[2]/div[2]/table[2]/tbody/tr[71]/td[1]/img      #Scroll to specific element
    sleep   3
    execute javascript      window.scrollTo(0,document.body.scrollHeight)           #Scroll to the Bottom of the page
    sleep   2
    execute javascript      window.scrollTo(0,document.body.scrollHeight)           #Scroll to the Top of the page
    sleep   2

    close browser
*** Keywords ***