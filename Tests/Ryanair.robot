*** Settings ***
Library  SeleniumLibrary



*** Test Cases ***

[documentation] Login Script



    Open Browser  https://www.ryanair.com  gc
    maximize browser window
    click button    xpath=//*[@class="cookie-popup-with-overlay__button"]
    click element    xpath=//*[@class='language-selector__button-chevron ng-star-inserted']
    click element    xpath=//*[@href="/fi/en"]
    click element    xpath=//label[contains(.,'One way')]
#    wait until element is enabled    xpath=//icon[@class='trip-type__icon trip-type__icon--selected']//span[@class='_container icon-10 icon-ie-16-10']//*[name()='svg']
#    select checkbox  xpath=//icon[@class='trip-type__icon trip-type__icon--selected']//span[@class='_container icon-10 icon-ie-16-10']//*[name()='svg']


  clear element text    xpath=//*[@placeholder="Departure"]
  input text    xpath=//*[@placeholder="Departure"]    Helsinki
  click element    xpath=//input[@id='input-button__destination']
  wait until element is enabled   xpath=//span[contains(.,'Belgium')]
  click element    xpath=//span[contains(.,'Belgium')]
  wait until element is enabled   xpath=//span[@data-id='CRL']
  input text    xpath=//*[@placeholder="Destination"]    Brussels Charleroi
  click element    xpath=//span[@data-id='CRL']
  wait until element is enabled    xpath=//*[@class="datepicker__calendar datepicker__calendar--left"]
  click element    xpath=//*[@data-id='2022-11-04']
  click button    xpath=//button[contains(.,'Done')]
  wait until element is enabled    xpath=//span[contains(.,'Search')]
  click element    xpath=//span[contains(.,'Search')]
  wait until element is visible    xpath=/html/body/app-root/flights-root/div/div/div/div/flights-lazy-content/flights-summary-container/flights-summary/div/div[1]/journey-container/journey/flight-list/div/flight-card/div/div/div[1]/div
  click element    xpath=/html/body/app-root/flights-root/div/div/div/div/flights-lazy-content/flights-summary-container/flights-summary/div/div[1]/journey-container/journey/flight-list/div/flight-card/div/div/div[1]/div
  Execute Javascript  window.scrollTo(0,document.body.scrollHeight);
  wait until element is enabled    xpath=/html/body/app-root/flights-root/div/div/div/div/flights-lazy-content/fare-selector-container/fare-selector/div/fare-table-container/fare-table/div[2]/ry-spinner/div[3]/div/div/fare-card/div
  scroll element into view    xpath=/html/body/app-root/flights-root/div/div/div/div/flights-lazy-content/fare-selector-container/fare-selector/div/fare-table-container/fare-table/div[2]/ry-spinner/div[3]/div/div/fare-card/div/div/button
  click button    xpath=/html/body/app-root/flights-root/div/div/div/div/flights-lazy-content/fare-selector-container/fare-selector/div/fare-table-container/fare-table/div[2]/ry-spinner/div[3]/div/div/fare-card/div/div/button



#    wait until page contains    Prime Exclusieve Deals
#    input text    id=twotabsearchtextbox    Ferrari 458
#    click button    id=nav-search-submit-button
#    wait until page contains    resultaten voor "Ferrari 458"
#    click element    xpath=//*[text()="RASTAR Afstandsbediening Ferrari Auto, 1:24 Ferrari 458 Italia Afstandsbediening Auto, Rood Ferrari Speelgoed"]
#    click button    xpath=//*[@id='buy-now-button']

   Close Browser

