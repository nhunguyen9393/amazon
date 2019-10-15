*** Settings ***
Documentation  Amazon top navigation
Library  SeleniumLibrary

*** Variables ***
${TOPNAV_SEARCH_BAR} =      id=twotabsearchtextbox
${TOPNAV_SEARCH_BUTTON} =   css=#nav-search > form > div.nav-right > div > input

*** Keywords ***
Search for Products
    [Arguments]  ${SEARCH_TERM}
    Enter Search Term   ${SEARCH_TERM}
    Submit Search

Enter Search Term
    [Arguments]  ${search_word}
    input text  ${TOPNAV_SEARCH_BAR}  ${search_word}

Submit Search
    click button  ${TOPNAV_SEARCH_BUTTON}