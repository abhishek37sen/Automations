*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources1.robot

*** Variables ***

*** Test Cases ***
Test Case For Createing Folder
    ${var}=    set variable    test
    ${mess}=    create folder from python    ${var}
    log    ${mess}