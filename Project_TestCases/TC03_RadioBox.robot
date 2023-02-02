*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://demo.nopcommerce.com/

*** Test Cases ***
Testing Radio button, Check boxes and dropdown lists
    open browser    ${url}  ${browser}
    maximize browser window
#for every action, we add time by this command (Sleep or set selenium speed)
    set selenium speed  2seconds
    title should be     nopCommerce demo store
    click link      xpath://a[@class="ico-login"]
    click element   xpath://button[@class="button-1 register-button"]

#RadioButton--> Selecting
    select radio button     Gender  M

#Checkbox--> Selecting
    unselect checkbox     Newsletter
    select checkbox     Newsletter

#Dropdown List
    select from list by label   DateOfBirthDay  5

    select from list by index   DateOfBirthMonth    3

    select from list by label   DateOfBirthYear     1999

    close browser


*** Keywords ***
