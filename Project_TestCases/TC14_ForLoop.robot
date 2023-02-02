*** Settings ***
#Library  SeleniumLibrary


*** Variables ***


*** Test Cases ***
For_Loops
#Loop for Numbers
    FOR   ${A}    IN RANGE    1   10
    log to console  ${A}
    END

    FOR     ${B}    IN  1 2 3 4 5 6 7 8            #with single space b/w values, print all values in a single line
    log to console  ${B}
    END

    FOR     ${C}    IN  11  12  13  14  15     #with double space b/w values, print values in new line
    log to console  ${C}
    END

#Loop with list items
    @{Items}    create list     10  20  30  40  50
    FOR     ${D}    IN  @{Items}
    log to console  ${D}
    END


#Loop for String values
    FOR     ${i}    IN  User1 User2 User3 User4 User5
    log to console  ${i}
    END

#Loop with list items having string values
    @{Names}    create list     Abbas   Muheeb  Fawad   Maaz    Faisal
    FOR     ${i}    IN  @{Names}
    log to console  ${i}
    END

*** Keywords ***