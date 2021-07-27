*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources1.robot

*** Variables ***
${url}    https://robotframework.org/

*** Test Cases ***
Test Case For User Define Keyword
    [Timeout]    2mins 10s
    ${res}=    start and close browser    ${url}    Chrome
    log to console    ${res}
    wait until page contains
    Rep
    FOR     ${i}    IN RANGE    @{res}

    END