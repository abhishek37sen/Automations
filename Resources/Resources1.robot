*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeyword/pythonkeyword.py
Library    ../ExternalKeyword/ReadData.py

*** Variables ***


*** Keywords ***
start and close browser
    [Arguments]    ${url}    ${browser}
    open browser    ${url}    ${browser}
    MAXIMIZE BROWSER WINDOW
    ${res}=    get location
    log    ${res}
    [Return]    ${res}

start the browser
    [Arguments]    ${url}    ${browser}
    open browser    ${url}    ${browser}
    maximize browser window

close the browser
    close browser

create folder from python
    [Arguments]    ${foldername}
    ${var}=    create_folder    ${foldername}
    [Return]    ${var}

start rading from excel
    [Arguments]    ${sheetname}    ${row}    ${col}
    ${cl}=    fetch_data    ${sheetname}    ${row}    ${col}
    [Return]    ${cl}

Fetching Total Row
    [Arguments]    ${sheetname}
    ${t_r}=    total_rows    ${sheetname}
    [Return]    ${t_r}