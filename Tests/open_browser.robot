*** Settings ***
Documentation  Testing
Library  SeleniumLibrary
Library  AngularJSLibrary

*** Variables ***
${BROWSER}  edge

*** Test Cases ***
Testing
    begin web test

*** Keywords ***
Begin web test
    open browser  https://www.amazon.com  ${BROWSER}
    maximize browser window
    sleep    3s
    click element    xpath=//*[@id="nav-main"]/div[1]/div/div/div[3]/span[1]/span/input
    click button    xpath=//*[@id="nav-main"]/div[1]/div/div/div[3]/span[1]/span

    #close browser