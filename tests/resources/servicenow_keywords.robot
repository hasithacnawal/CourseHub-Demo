*** Settings ***
Library    SeleniumLibrary
Variables  ../variables/config_variables.py

*** Keywords ***
Login To ServiceNow
    [arguments]    ${username}  ${password}
        Open Browser    ${LOGIN_URL}    Chrome
        Maximize Browser Window
        Input Text      id=user_name    ${username}
        Input Text      id=user_password    ${password}
        Click Button    id=sysverb_login
        Sleep    2s

Logout From ServiceNow
    Click Link      xpath://*[@id="userMenu"]/span/span[2]/div/div[3]/button
