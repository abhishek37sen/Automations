*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources1.robot

*** Variables ***
${url}
${browser}
*** Test Cases ***
start and close browser and verify
        [Tags]    SME23
        ${pt} =     set variable    Check
        ${TPA} =     set variable    647.95
        ${result} =     Convert To Number  ${TPA}
        convert to string
        ${in} =     set variable    0.02
        ${In} =     Convert To Number  ${in}
        ${result} =    EVALUATE     ${result}+0.02 if '${pt}'=='Check' else ${result}
        wait until page does not contain
        log to console    ${result}
#        wait until element is visible
*** Keywords ***
