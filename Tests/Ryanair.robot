*** Settings ***
Library  SeleniumLibrary



*** Test Cases ***

[documentation] Login Script



    Open Browser  https://amazon.nl  edge
    maximize browser window


   click element    xpath=//*[@class='a-button a-button-primary']
    click image    Keuken
#    wait until page contains    Prime Exclusieve Deals
#    input text    id=twotabsearchtextbox    Ferrari 458
#    click button    id=nav-search-submit-button
#    wait until page contains    resultaten voor "Ferrari 458"
#    click element    xpath=//*[text()="RASTAR Afstandsbediening Ferrari Auto, 1:24 Ferrari 458 Italia Afstandsbediening Auto, Rood Ferrari Speelgoed"]
#    click button    xpath=//*[@id='buy-now-button']
    sleep    3s
    #Close Browser

