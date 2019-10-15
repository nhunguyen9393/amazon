*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SIGNIN_MAIN_HEADING} =    xpath=//h1
${SIGNIN_TEXT} =            Sign-In

*** Keywords ***
Verify Page Loaded
    page should contain element  ${SIGNIN_MAIN_HEADING}
    element text should be  ${SIGNIN_MAIN_HEADING}  ${SIGNIN_TEXT}