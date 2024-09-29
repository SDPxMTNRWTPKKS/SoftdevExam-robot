*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    http://127.0.0.1:5000

*** Test Cases ***
Check true_when_x_is_17
    [Documentation]    Verify that 17 is a prime number
    Create Session    mysession    ${BASE_URL}
    ${response}=    GET On Session    mysession    /is_prime/17
    Should Be Equal    ${response.content.decode('utf-8')}    True

Check false_when_x_is_36
    [Documentation]    Verify that 36 is not a prime number
    Create Session    mysession    ${BASE_URL}
    ${response}=    GET On Session    mysession    /is_prime/36
    Should Be Equal    ${response.content.decode('utf-8')}    False

Check true_when_x_is_13219
    [Documentation]    Verify that 13219 is a prime number
    Create Session    mysession    ${BASE_URL}
    ${response}=    GET On Session    mysession    /is_prime/13219
    Should Be Equal    ${response.content.decode('utf-8')}    True
