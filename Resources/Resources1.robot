*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    Collections
Library    ../ExternalKeyword/pythonkeyword.py
Library    ../ExternalKeyword/ReadData.py

*** Variables ***
${env}      ${EMPTY}
#{URL}      create_url   ${env}

*** Test Cases ***
starting browser if env
#    open browser    https://rahulshettyacademy.com/AutomationPractice/      Chrome
#    &{dict}=    create_url     ${env}
#    ${value}=    get from dictionary    ${dict}     url
   ${count}=    set variable    ${5}
   log to console    ${count}
    should be equal as integers

#    log to console    ${value}
#    click element
#    GET WEBELEMENTS


*** Keywords ***
start and close browser
    [Arguments]    ${url}    ${browser}
    open browser    ${url}    ${browser}
    MAXIMIZE BROWSER WINDOW
    ${res}=    get location
    log    ${res}
    [Return]    ${res}
    open browser

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