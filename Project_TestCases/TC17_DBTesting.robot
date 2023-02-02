*** Settings ***
Library     SeleniumLibrary
Library     DatabaseLibrary
Library     OperatingSystem

Suite Setup         Connect To Database    pymysql     ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown      Disconnect From Database


*** Variables ***
${DBName}      MyDB
${DBUser}      root
${DBPass}      root
${DBHost}      127.0.0.1
${DBPort}      3306


*** Test Cases ***
Create Person Table
    ${Output}=  Execute SQL String  create table person(id integer,First_name varchar(20),Last_name vachar (20));
    log to console  ${Output}
    should be equal as strings     ${Output}   None

*** Keywords ***