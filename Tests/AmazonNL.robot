*** Settings ***
Library  SeleniumLibrary



*** Test Cases ***

[documentation] Login Script
     Begin Web Test
     Accept the cookies
     Click to target image
     Sayfayi beklet
     Sayfayi kapat



#    wait until page contains    Prime Exclusieve Deals
#    input text    id=twotabsearchtextbox    Ferrari 458
#    click button    id=nav-search-submit-button
#    wait until page contains    resultaten voor "Ferrari 458"
#    click element    xpath=//*[text()="RASTAR Afstandsbediening Ferrari Auto, 1:24 Ferrari 458 Italia Afstandsbediening Auto, Rood Ferrari Speelgoed"]
#    click button    xpath=//*[@id='buy-now-button']

*** Keywords ***

Begin Web Test
    Open Browser    https://amazon.nl    edge
    maximize browser window

Accept the cookies
    click element    xpath=//*[@class='a-button a-button-primary']

Click to target image
    click image    Elektrische verwarming

Sayfayi beklet
    sleep    3s

Sayfayi kapat
    close browser


