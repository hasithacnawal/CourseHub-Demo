*** Settings ***
Library         SeleniumLibrary
Variables       variables/config_variables.py
Resource        resources/servicenow_keywords.robot

*** Test Cases ***
Valid Login
    Login To ServiceNow     ${USERNAME}     ${PASSWORD}
    Wait until page does not contain element    xpath=//span[contains(@class,"dp-invalid-login-msg")]       15s

Invalid Login
    Login To ServiceNow     ${USERNAME}     ${Fake_PASSWORD}
    Wait Until Page Contains Element    xpath=//span[contains(@class,"dp-invalid-login-msg")]       15s
    Close browser
