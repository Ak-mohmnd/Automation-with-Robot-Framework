*** Settings ***


*** Variables ***


*** Test Cases ***
TC01 User_Registration
    [Tags]  regression
    log to console  This is User Registration Test
    log to console  User registration is over

TC02 User_Login
    [Tags]  sanity
    log to console  This is User Login Test
    log to console  User Login is over

TC03 Change_User_Setting
    [Tags]  regression
    log to console  This is Changing User Setting Test
    log to console  Change User Setting is over

TC04 User_Logout
    [Tags]  sanity
    log to console  This is User Logout Test
    log to console  User Logout is over

# Commands used in Terminal
#   for include tag ---> --include [TagName] + Path or -i [TagName] + Path
#   for multi tag ---> -i [TagName1] -i [TagName2] + Path
#   for exclude tag ---> --exclude [TagName] + Path or -e [TagName] + Path

*** Keywords ***