*** Settings ***
Documentation    some info about the suite

Library    SeleniumLibrary
Library  AngularJSLibrary

*** Variables ***
${BROWSER}  gc


*** Test Cases ***

    User must sign in to check out




*** Keywords ***

Open browser
sleep 3s
close browser
