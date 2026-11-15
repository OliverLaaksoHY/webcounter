*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When reset button pressed the counter is zero
    Go To  ${HOME_URL}
    Click  button >> text=Paina
    Click  button >> text=Nollaa
    Get Title  ==  Laskuri
    Get Text  body  *=  nappia painettu 0 kertaa
