*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
test1
    Open Browser    Https://Google.com    gc
    Go To    https://www.moneycontrol.com/
    Maximize Browser Window
    sleep     4s
    Capture Page Screenshot
    click element    //a[@class='link1 dropdown-toggle linkSignUp']
    sleep     4s
    Capture Page Screenshot
    select frame     //iframe[@id='myframe']
    click element    //a[@class='btn-lrg-green btnemail']
    Input text     //input[@id='first_name']      Abhishek
    Input text     //input[@id='last_name']      Dixit
    Input text     //input[@id='email']      abhimohitdxit88@gmail.com
    Input text     //input[@id='pwd']       @Bhimohit1!
    Capture Page Screenshot
    click element    //button[@id='ACT_SIGNUP_SUBMIT']
    Unselect Frame
    click element    //button[@class='close']
    Input text      //input[@id='search_str']     infosys
    sleep    4s
    Click element    (//div[@class='jspPane']//a)[1]
    sleep     4s
    ${BSE_value}=     Get Text    //span[@id='Bse_Prc_tick']
    log      ${BSE_value}
    ${NSE_value}=     Get Text    //span[@id='Nse_Prc_tick']
    log      ${NSE_value}
    Close Browser
