*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    https://www.thetestingworld.com/index.php?option=com_users&view=login&Itemid=587

*** Test Cases ***
TC_OO1 START AND CLOSE
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Enter Username Password    abhi23    1234
    Select Checkbox    name:remember
#    Input Text    id:username    abhi
#    Input Text    id:password    laddd
    Click Button    xpath://button[@type='submit']
#    Clear Element Text    name:jform[name]
#    Click Link    xpath://*[(@id = "ja-content-main")]//li[(((count(preceding-sibling::*) + 1) = 1) and parent::*)]//a
#    Close Browser

*** Keywords ***
Enter Username Password
    [Arguments]    ${username}    ${password}
    Input Text    name:username    ${username}
    Input Text    name:password    ${password}
