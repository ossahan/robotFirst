*** Settings ***
Library    SeleniumLibrary
Documentation    This is some basic info about the whole suite
Resource        Resources/Amazon2.robot


*** Variables ***

*** Test Cases ***
User must sign in to check out
       [Documentation]    This is some basic info
       [Tags]    Smoke
       Amazon2.User can add product to cart
       Amazon2.User can search for products
       Amazon2.User can view a product





