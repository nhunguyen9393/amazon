*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${PRODUCT_BACK_TO_RESULTS} =        Back to results
${PRODUCT_ADD_TO_CART_BUTTON} =     id=add-to-cart-button
*** Keywords ***
Verify Page Loaded
    wait until page contains  ${PRODUCT_BACK_TO_RESULTS}

Add to Cart
    click button  ${PRODUCT_ADD_TO_CART_BUTTON}