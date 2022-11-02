*** Settings ***
Documentation   This is some basic info about the whole suite
Library         SeleniumLibrary

*** Variables ***


*** Test Cases ***
User can search for products
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke

    Open Browser                            http://www.amazon.com       chrome
    maximize browser window
    click element                           xpath=//*[@id="nav-main"]/div[1]/div/div/div[3]/span[1]/span/input
    #Wait Until Page Contains                Your Amazon.com
    Input Text                              id=twotabsearchtextbox      Ferrari 458
    Click Button                            xpath=//*[@id="nav-search-submit-button"]
    Wait Until Page Contains                results for "Ferrari 458"
    Close Browser

User can view a product
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke

    Open Browser                            http://www.amazon.com       chrome
    Maximize browser window
    click element                           xpath=//*[@id="nav-main"]/div[1]/div/div/div[3]/span[1]/span/input
    #Wait Until Page Contains                Your Amazon.com
    Input Text                              id=twotabsearchtextbox      Ferrari 458
    Click Button                            xpath=//*[@id="nav-search-submit-button"]
    Wait Until Page Contains                results for "Ferrari 458"
    click image                             xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/div/div/div/div/div/div[1]/span/a/div/img
    Wait Until Page Contains                Back to results
    Close Browser

User can add product to cart
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke

    Open Browser                            http://www.amazon.com       chrome
   maximize browser window
    click element                           xpath=//*[@id="nav-main"]/div[1]/div/div/div[3]/span[1]/span/input
    #Wait Until Page Contains                Your Amazon.com
    Input Text                              id=twotabsearchtextbox      Ferrari 458
    Click Button                            xpath=//*[@id="nav-search-submit-button"]
    Wait Until Page Contains                results for "Ferrari 458"
    click image                             xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/div/div/div/div/div/div[1]/span/a/div/img
    Wait Until Page Contains                Back to results
    Click Button                            id=add-to-cart-button
    Wait Until Page Contains                Added to Cart
    Close Browser

User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke

    Open Browser                            http://www.amazon.com       chrome
   maximize browser window
    click element                           xpath=//*[@id="nav-main"]/div[1]/div/div/div[3]/span[1]/span/input
    #Wait Until Page Contains                Your Amazon.com
    Input Text                              id=twotabsearchtextbox      Ferrari 458
    Click Button                            xpath=//*[@id="nav-search-submit-button"]
    Wait Until Page Contains                results for "Ferrari 458"
    click image                             xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/div/div/div/div/div/div[1]/span/a/div/img
    Wait Until Page Contains                Back to results
    Click Button                            id=add-to-cart-button
    Wait Until Page Contains                Added to Cart
    click button                            xpath=//*[@value="Proceed to checkout"]
    Page Should Contain Element             xpath=//*[@class="a-box-inner a-padding-extra-large"]
#    element should contain                  Sign In

    Close Browser

*** Keywords ***
