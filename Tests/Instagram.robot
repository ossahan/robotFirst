*** Settings ***




*** Test Cases ***

[documentation] Login Script
     Begin Web Test
     Accept the cookies
     Click to target image
     Sayfayi beklet
     Sayfayi kapat



***    Keywords  ***

Begin Web Test

   op
    Maximize browser window

Accept the cookies
    Click element    xpath=//*[@class='a-button a-button-primary']

Click to target image
    click image    Elektrische verwarming

Sayfayi beklet
    sleep    3s

Sayfayi kapat
    close browser



