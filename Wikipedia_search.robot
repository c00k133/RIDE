*** Settings ***
Documentation     This test case attempts to search something on Wikipedia
Library           Selenium2Library
Resource          Wikipedia.txt

*** Test Cases ***
Attempts to open Wikipedia and search something
    Open Wikipedia
    Enter Search Word    ${SEARCH WORD}
    Search With Enter
    Verify Wikipedia RF Opened
    Press Log In
    Enter Credentials
    Attempt Login
    Verify Failed Login
    [Teardown]    Wrap Up
