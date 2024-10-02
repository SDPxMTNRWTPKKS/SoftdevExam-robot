*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    http://127.0.0.1:5000 

*** Test Cases ***
Check true_when_x_is_1
    [Documentation]    Verify that 1 is odd
    Create Session    mysession    ${BASE_URL}
    ${response}=    GET On Session    mysession    /isodd/1
    Should Be Equal    ${response.content.decode('utf-8')}    True

Check false_when_x_is_0
    [Documentation]    Verify that 0 is not odd
    Create Session    mysession    ${BASE_URL}
    ${response}=    GET On Session    mysession    /isodd/0
    Should Be Equal    ${response.content.decode('utf-8')}    False

Check true_when_x_is_nev2
    [Documentation]    Verify that -2 is not odd
    Create Session    mysession    ${BASE_URL}
    ${response}=    GET On Session    mysession    /isodd/-2
    Should Be Equal    ${response.content.decode('utf-8')}    False
