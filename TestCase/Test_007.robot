*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***

*** Test Cases ***
Test Case For Tags
    [Tags]    ALL
#    open browser    http://demo.automationtesting.in/FileDownload.html    Chrome
#    open browser
#    create unique folder
#    ${now}    Get Time    epoch
    ${now}=    set variable    output
    log to console    'now}'${now}

    ${download directory}    Join Path    ${OUTPUT DIR}    downloads_${now}
    Create Directory    ${download directory}
    LOG TO CONSOLE    ${download directory}
    ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    # list of plugins to disable. disabling PDF Viewer is necessary so that PDFs are saved rather than displayed
#    ${disabled}    Create List    Chrome PDF Viewer
    log to console    chrome_options}${chrome options}
    ${prefs}    Create Dictionary    download.default_directory=${download directory}
    log to console    prefs}${prefs}
    run keyword if    ${prefs}=="ddd"    A
    Get Element Attribute

    Call Method    ${chrome options}    add_experimental_option    prefs    ${prefs}
    open browser    http://demo.automationtesting.in/FileDownload.html    Chrome   options=${chrome options}
#    Create Webdriver    Chrome    chrome_options=${chrome options}
#    go to       http://demo.automationtesting.in/FileDownload.html
    ${file_path}    join path    ${download directory}    t2.txt
    remove file    ${file_path}
    click element    xpath://div/a[@class='btn btn-primary']
#    wait for download to finish
    ${file}    Wait Until Keyword Succeeds    1 min    2 sec    Download should be done    ${download directory}



Test Case For Second Tags
    [Tags]    Seconds
    GET LENGTH
    should be True
    element should be visible
    open browser    https://www.thetestingworld.com/testings/    Chrome
    maximize browser window
    ${var}=    create list
    Append To List
    Lists should be equal
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

*** Keywords ***
Download should be done
    [Arguments]    ${directory}
    [Documentation]    Verifies that the directory has only one folder and it is not a temp file.
    ...
    ...    Returns path to the file
    ${files}    List Files In Directory    ${directory}
    Length Should Be    ${files}    1    Should be only one file in the download folder
    Should Not Match Regexp    ${files[0]}    (?i).*\\.tmp    Chrome is still downloading a file
    ${file}    Join Path    ${directory}    ${files[0]}
    Log    File was successfully downloaded to ${file}
    [Return]    ${file}