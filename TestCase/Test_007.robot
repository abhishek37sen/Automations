*** Settings ***
Library    SeleniumLibrary
Default Tags    DFL
Force Tags    ALLINONE

*** Variables ***

*** Test Cases ***
Test Case For Tags
    [Tags]    ALL
    open browser    https://www.thetestingworld.com/testings/    Chrome
    maximize browser window
    close browser

Test Case For Second Tags
    [Tags]    Seconds
    open browser    https://www.thetestingworld.com/testings/    Chrome
    maximize browser window
    ${var}=    get title
    input text    name:fld_email    test@gmail.com
    ${var1}=    get text    //footer/p
    ${var2}=    get value    //input[@name='fld_email']
    log to console    ${var2}
    log    ${var2}
    ${pageHtml}=    get source
    log    ${pageHtml}
    close browser

Test Case For Third Tags
    open browser    https://www.thetestingworld.com/testings/    Chrome
    close browser