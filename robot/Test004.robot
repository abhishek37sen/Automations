*** Settings ***

Library    SeleniumLibrary
Library    Collections

Test Teardown    Close All Browsers
Library           Selenium2Library
#Suite Setup       Open Website
Test Teardown    close browser
*** Variables ***
${URL}    https://robotframework.org/
${CHROMEDRIVER_PATH}        /usr/local/bin/chromedriver
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
#    open browser    https://www.thetestingworld.com/testings/    chrome
    ${chrome_options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome_options}    add_argument    --headless
    Open Browser    ${URl}    chrome    options=${chrome_options}      executable_path=${CHROMEDRIVER_PATH}
    log to console    non


#    select from list by value    name:sex    2
#    select from list by index    name:sex    1


*** Keywords ***
#Open Website
#    ${chrome_options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
#    Call Method    ${chrome_options}    add_argument    --no-sandbox
#    Call Method    ${chrome_options}    add_argument    --headless
#    Open Browser    ${URl}    chrome    options=${chrome_options}      executable_path=${CHROMEDRIVER_PATH}