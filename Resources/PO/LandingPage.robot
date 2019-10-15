*** Settings ***
Documentation  Amazon Lading Page
Library  SeleniumLibrary

*** Variables ***
${LANDING_PAGE_CONTAIN} =  Your Amazon.com
*** Keywords ***
Load
    Go to  ${START_URL}

Verify Page Loaded
    Wait until page contains  ${LANDING_PAGE_CONTAIN}
