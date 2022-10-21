*** Settings ***
Documentation    some info about the suite

Library    SeleniumLibrary
Library  AngularJSLibrary

*** Variables ***
${BROWSER}  gc


*** Test Cases ***

User must sign in to check out
begin web test



*** Keywords ***

open browser http://www.amazon.com ${BROWSER}
sleep 3s
close browser
