*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources1.robot
Test Setup    start the browser    ${url}    Chrome
Test Teardown    close the browser
*** Variables ***
${url}    https://www.thetestingworld.com/testings/

*** Test Cases ***
First Test Setup For Suite
    input text    name:fld_username    abhishek
    input text    name:fld_email    abhi@gmail.com

Second Test Setup For Suite
    input text    name:fld_username    raj
    input text    name:fld_email    raj@gmail.com

*** Keywords ***
