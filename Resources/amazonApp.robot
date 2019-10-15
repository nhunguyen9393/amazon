*** Settings ***
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/SearchResults.robot
Resource  ../Resources/PO/Product.robot
Resource  ../Resources/PO/Cart.robot
Resource  ../Resources/PO/SignIn.robot

*** Keywords ***
Search for Products
    [Arguments]  ${SEARCH_TERM}
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products  ${SEARCH_TERM}
    SearchResults.Verify Search Completed
    sleep  3s

Select Product from Search Results
    SearchResults.Click Product Link
    Product.Verify Page Loaded

Add Product to Cart
    Product.Add to Cart
    Cart.Verify Product Added

Begin Checkout
    Cart.Proceed to Checkout
    sleep  2s
    SignIn.Verify Page Loaded
