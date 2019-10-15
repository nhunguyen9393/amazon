*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    open browser    about:blank     ${BROWSER}

End Web Test
    close browser

Insert Testing Data
    Custom Keyword 1
    Custom Keyword 2

Cleanup Testing Data
    Log     I am cleanning up the test data ...

Custom Keyword 1
    Log  Doing Keyword 1

Custom Keyword 2
    Log  Doing Keyword 2