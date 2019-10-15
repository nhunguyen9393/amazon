*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${CART_ADD_TO_CART} =       Added to Cart
${CART_CHECKOUT_LINK} =     css=#attach-sidesheet-checkout-button > span > input

*** Keywords ***
Verify Product Added
    wait until page contains  ${CART_ADD_TO_CART}

Proceed to Checkout
    sleep  3s
    click button  ${CART_CHECKOUT_LINK}