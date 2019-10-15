*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/amazonApp.robot
Resource  ../Resources/common.robot

Suite Setup     common.Insert Testing Data
Test Setup      common.Begin Web Test
Test Teardown   common.End Web Test
Suite Teardown  common.Cleanup Testing Data

*** Variables ***
# ie, firefox, edge
${BROWSER} =        chrome
${START_URL} =      https://www.amazon.com
${SEARCH_TERM} =    Ferrari 458


*** Test Cases ***
Logged out user should be able to view a product
    [Tags]  Test1
    amazonApp.Search for Products   ${SEARCH_TERM}
    amazonApp.Select Product from Search Results

Logged out user should be able to add product to cart
    [Tags]  Test2
    amazonApp.Search for Products   ${SEARCH_TERM}
    amazonApp.Select Product from Search Results
    amazonApp.Add Product to Cart

User must sign in to check out
    [Tags]  Test3
    amazonApp.Search for Products   ${SEARCH_TERM}
    amazonApp.Select Product from Search Results
    amazonApp.Add Product to Cart
    amazonApp.Begin Checkout