*** Settings ***
Library    SikuliLibrary    mode=NEW
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***
start sikuli process

    open browser    http://demo.automationtesting.in/FileDownload.html    Chrome
    Start sikuli process
    Add Image Path    G:/
    click    start.png
    close browser
#    click    chrome.png
#    Click In    img9.png    chrome.png
##    click    text.png
#
#    wait until screen contain    text.png    5
#    input text    text.png    facebook
#    click    google.png
#    press key
#    Highlight    img9.png
#    ${var}=    Get Text    chrome.png

#    log to console    ${var}
#    click    search.pngnotepad
#    Input Text    Screenshot_2.png    notepad
#    click    notepad.png
#    Input Text    text_area.png    i am here
##    click    Screenshot_1.png