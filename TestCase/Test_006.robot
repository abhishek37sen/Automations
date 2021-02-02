*** Settings ***
Library    SeleniumLibrary
Library    DateTime

*** Variables ***
${url}    http://school37project.herokuapp.com/

*** Test Cases ***
School Test Case
    open browser    ${url}    Chrome
    input text    name:email    admin@gmail.com
    input text    name:password    admin
    click button    //button[text()='Sign In']
    click link    //a[@href='/manage_session']
    click element    //input[@name='session_start']
    ${my_date_to_select}=    convert date    2021/05/12    %d-%m-%Y
    log to console    ${my_date_to_select}
    FOR    ${i}    IN RANGE    5
        press keys    //input[@name='session_start']    ARROW_UP
    END
    press keys    //input[@name='session_start']    ARROW_RIGHT
    FOR    ${i}    IN RANGE    12
        press keys    //input[@name='session_start']    ARROW_UP
    END
    press keys    //input[@name='session_start']    ARROW_RIGHT
    FOR    ${i}    IN RANGE    1
            press keys    //input[@name='session_start']    ARROW_UP
    END
#    press key    //input[@name='session_start']    \\49
#    Execute JavaScript  document.getElementsByClassName('form-control').value='${my_date_to_select}'
#    click element    //input[@name='session_start']
#    input text    name:session_start    ${date}
#    press keys    //input[@name='session_start']    ${date}
#    input text    name:session_end    29-Jan-2022

*** Keywords ***
