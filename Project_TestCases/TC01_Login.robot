*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}    https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    open browser    ${url}  ${browser}
    LoginToApplication
    close browser


*** Keywords ***
LoginToApplication
    click link  xpath://a[@class="ico-login"]
    input text  id:Email    ak.mohmnd@gmail.com
    sleep   2 seconds
    input text  id=Password     Ak.mohmnd1
    click element   xpath://button[@class="button-1 login-button"]
