*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}      https://swisnl.github.io/jQuery-contextMenu/demo.html
${url1}     https://testautomationpractice.blogspot.com
${url2}     http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html


*** Test Cases ***
Mouse_Operations
#Right Click Action
    open browser    ${url}  ${browser}
    maximize browser window
    sleep   2
    open context menu   xpath:/html/body/div/section/div/div/div/p/span
    sleep   2

#Double Click Action
    go to    ${url1}
    maximize browser window
    sleep   2
    double click element    xpath://*[@id="HTML10"]/div[1]/button
    sleep   2

#Drag and Drop Action
    go to    ${url2}
    maximize browser window
    sleep   2
    drag and drop   id=box6   id=box106
    sleep   2

    close browser
*** Keywords ***