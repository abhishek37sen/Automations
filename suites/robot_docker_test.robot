*** Settings ***
Library    SeleniumLibrary
Library    Collections

Test Teardown    Close All Browsers

*** Test Cases ***
Get Request TestWebsite
    open browser    https://www.thetestingworld.com/testings/    headlessChrome
#    Should Be Equal As Strings      ${resp.status_code}     200