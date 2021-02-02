*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${URL}  https://www.thetestingworld.com/index.php?option=com_users&view=registration&Itemid=588
${Browser}  Chrome

*** Test Cases ***
#Test List And Variables
#    @{List1}    create list    Hello    22    24.43    world
#    FOR    ${i}    IN    @{List1}
#        log to console    ${i}
#    END
#Tc__002 Test
#    ${key_var}=    set variable    NO
#    run keyword if    '${key_var}'=='YES'    log to console    value found
#    run keyword if    '${key_var}'=='NO'    log to console    value not found
Test_002 speed
    Open Browser    ${URL}    ${Browser}
    maximize browser window
    go to    https://www.facebook.com/
    ${urls}=    get location
    sleep    4 seconds
    go back
    sleep    4 seconds
    go to    ${urls}


*** Keywords ***
