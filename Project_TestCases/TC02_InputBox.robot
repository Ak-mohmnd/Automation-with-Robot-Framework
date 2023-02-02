*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://demo.nopcommerce.com/

*** Test Cases ***
TestingInputBox
    open browser    ${url}  ${browser}
    maximize browser window
    title should be     nopCommerce demo store
    click link      xpath://a[@class="ico-login"]

    ${"email_txt"}  set variable    id:Email
    ${"password_txt"}   set variable    id:Password

    element should be visible   ${"email_txt"}
    element should be enabled   ${"email_txt"}
    input text  ${"email_txt"}  ak.mohmnd@gmail.com

    element should be visible   ${"password_txt"}
    element should be enabled   ${"password_txt"}
    input text  ${"password_txt"}  Ak.mohmnd1

    sleep   3
    clear element text  ${"email_txt"}
    sleep
    clear element text  ${"password_txt"}
    sleep   3


    close browser

*** Keywords ***
