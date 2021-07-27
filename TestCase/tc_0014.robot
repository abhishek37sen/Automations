*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
#Library    ExtendedSelenium2Library
Library    Browser
Library    RequestsLibrary
Library    JSONLibrary
Library    Collections
#Library    Clipboard
Library    RPA.PDF
Library    String
#Library    SikuliLibrary
#Library    Selenium2Library
Library    ../Library/headless_download.py
Library    DateTime

*** Variables ***
${base_url}     http://dummy.restapiexample.com
${HIT_COUNT}=   0
*** Test Cases ***

SME_Request_Count_02-Verifing the Count of Query through API
    [Tags]      headless

    wait until page contains

    get current date
    should be equal
    wait until page contains
    should be true
    wait until element is visible
    wa
    element attribute value should be
    run keyword and return if
    CLEAR ELEMENT TEXT
    should be equal as strings
    get webelement
    page should not contain
#    ${now}    Get Time    epoch
#    ${download directory}    Join Path    ${OUTPUT DIR}    downloads
#    Create Directory    ${download directory}
#
#    ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
#
#    # list of plugins to disable. disabling PDF Viewer is necessary so that PDFs are saved rather than displayed
#    ${disabled}    Create List    Chrome PDF Viewer
#    ${prefs}    Create Dictionary    download.default_directory=${download directory}    plugins.plugins_disabled=${disabled}
#    Call Method    ${chrome options}    add_experimental_option    prefs    ${prefs}
#
#    Call Method    ${chrome options}    add_argument    headless
#    Call Method    ${chrome options}    add_argument    disable-gpu
#
##    Create Webdriver    Chrome    chrome_options=${chrome options}

    open browser      https://the-internet.herokuapp.com/broken_images   chrome
    # verify the footer is there
    page should contain  Powered by Elemental Selenium
    RUN KEYWORD AND RETURN STATUS
    should be equal
    # remove it
    execute javascript
    ...  var nodesSnapshot=document.getElementsByClassName('row');
#    ...  element.parentNode.removeChild(element);
    ...     for ( var i=0 ; i < nodesSnapshot.length; i++ ){
#    ...     result.push( nodesSnapshot.snapshotItem(i) );
    ...     nodesSnapshot[i].removeAttribute("class");
    ...     }
#    ...  element.removeAttribute("class");
    Fail
    # verify it was removed
#    page should not contain  Powered by Elemental Selenium
#    execute javascript
#    ...    var element= document
#    ...    element