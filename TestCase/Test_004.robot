*** Settings ***
library    Seleniumlibrary
library    Collections
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${URL}    https://robotframework.org/

*** Test Cases ***
#Test multi_window_handle
#    Open Browser    ${url}    Chrome
#    maximize browser window
#    Open Browser    https://www.facebook.com/    Chrome
#    maximize browser window
#    switch browser    1
#    ${var}=    get location
#    log to console    ${var}

#Test switch_multi_window
#    open browser    ${url}    Chrome
#    maximize browser window
#    click element    //a[text()='GitHub']
#    select window    Robot Framework
#    ${url1}=    get location
#    log to console    ${url1}
#    select window    GitHub - robotframework/robotframework: Generic automation framework for acceptance testing and RPA
#    ${url2}=    get location
#    log to console    ${url2}

#Test switch_window_using_window_handlle
#    open browser    ${url}    Chrome
#    maximize browser window
#    set selenium speed    2 seconds
#    click element    //a[text()='GitHub']
#    @{list1}    get window handles
#    FOR    ${win}    IN    @{list1}
#        select window    ${win}
#        ${var}=    get location
#        log to console    ${var}
#    END

Test_case Validation_all
    open browser    https://www.thetestingworld.com/testings/    Chrome
#    page should contain    Login or Sign Up to start
#    page should not contain    hhhhhhh
#    page should contain checkbox   name:terms
#    page should not contain checkbox    name:terms
#    page should contain textfield    name:fld_username
#    page should contain image    images/logo.png
#    page should contain list    name:sex
#    element should be enabled    name:fld_username
#    element should be disabled    name:fld_username
    title should be     Login & Sign Up Forms
    input text    name:fld_username    testingworld
#    select from list by value    name:sex    2
#    select from list by index    name:sex    1

*** Keywords ***
