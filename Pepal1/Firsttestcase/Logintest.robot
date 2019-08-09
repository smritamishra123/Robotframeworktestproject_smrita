*** Settings ***
Library    SeleniumLibrary




*** Test Cases ***
MyFirstTestCase
    Log    I am Smrita    
    
MySecondTestCase
    Log    My second test case    
    

LoginToPepal
    Open Browser    ${URL}     firefox
    Set Browser Implicit Wait    5
    Input Text    name=lytA$ctl02$UserName    nikita@gmail.com
    Input Password    name=lytA$ctl02$Password    0000
    Click Button    name=lytA$ctl02$LoginButton    
    Sleep    5    
    Close Browser
    
#FOR ENVIRONMENT VARIABLE (IT CHECK THE ENVIRONMENT FOR SET UP). E.G: 
    Log    This case was executed by %{username} on %{os}    
    
    
*** Variables ***
${URL}    http://172.18.11.127:90/HRISLogin.aspx

        