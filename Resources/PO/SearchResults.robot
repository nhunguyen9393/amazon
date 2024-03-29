*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SEARCH_RESULTS_PRODUCT_LINK} =  css=#search > div.sg-row > div.sg-col-20-of-24.sg-col-28-of-32.sg-col-16-of-20.sg-col.s-right-column.sg-col-32-of-36.sg-col-8-of-12.sg-col-12-of-16.sg-col-24-of-28 > div > span:nth-child(4) > div.s-result-list.s-search-results.sg-row > div:nth-child(1) > div > span > div > div > div:nth-child(2) > div:nth-child(3) > div > div.a-section.a-spacing-none.a-spacing-top-small > h2 > a

*** Keywords ***
Verify Search Completed
    wait until page contains  results for "${SEARCH_TERM}"

Click Product Link
    [Documentation]  Clicks on the first product in the search results list
    click link  ${SEARCH_RESULTS_PRODUCT_LINK}

