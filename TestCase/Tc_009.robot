*** Settings ***
Library    SeleniumLibrary
Library    ../Library/Clipboard.py
Resource    ../Resources/Resources1.robot
*** Variables ***
${url}    https://www.thetestingworld.com/index.php?option=com_users&view=login&Itemid=587

*** Test Cases ***
Test Case For Reading From Excel
    open browser    ${url}    Chrome
    maximize browser window
    ${sheetname}=    set variable    Sheet1
    ${t_row}=    Fetching Total Row    ${sheetname}
#    ${row}=    set variable    1
    ${col}=    set variable    1
    FOR   ${row}    IN RANGE    1    ${t_row}
        ${username}=    start rading from excel    ${sheetname}    ${row}    ${col}
        ${password}=    start rading from excel    ${sheetname}    ${row}    2
        input text    name:username    ${username}
        sleep    2 seconds
        input text    name:password    ${password}
        sleep    2 seconds
        click button    //button[@type='submit']
    END
#    log to console    ${cl}
    copy to clipboard