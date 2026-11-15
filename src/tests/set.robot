*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Reset Application State

*** Test Cases ***
When reset button pressed the counter is zero
    Go To  ${HOME_URL}
    Fill Text  input[name="number"]  10   
    
    Click  button >> text=Aseta
    Get Text  body  *=  nappia painettu 10 kertaa
