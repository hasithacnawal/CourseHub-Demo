*** Settings ***

Library     SeleniumLibrary

Variables   variables/config_variables.py

Resource    resources/servicenow_keywords.robot

*** Test Cases ***

Course Subscription/ Subscribe Button View Test
    Login To ServiceNow     ${USERNAME}     ${PASSWORD}
    Go To   ${COURSE_DETAIL_URL}
    Wait until page contains element    xpath://*[@id="item-button_1"]//button/slot/span    15s
    Sleep    2s

Course Subscription/ Subscribe Button Action Test
    Login To ServiceNow     ${USERNAME}     ${PASSWORD}
    Go To   ${COURSE_DETAIL_URL}
    Wait until page contains element    xpath://*[@id="item-button_1"]//button/slot/span      15s
    Click element    xpath://*[@id="item-button_1"]//button/slot/span
    Wait until page contains element    xpath//*[@id="modalHeading-kvyiw7rotawk-1795"]      15s

Course Subscription/ Unsubscribe Button View Test
    Login To ServiceNow     ${USERNAME}     ${PASSWORD}
    Go To   ${SUB_COURSE_DETAIL_URL}
    Wait until page does not contain element    xpath://*[@id="item-button_1"]//button/slot/span      15s
