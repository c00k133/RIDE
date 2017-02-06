*** Settings ***
Documentation     This test case attempts to search something on Wikipedia
Library           Selenium2Library
Resource          Wikipedia.txt

*** Variables ***
${SEARCH WORD}    Robot Framework

*** Test Cases ***
Attempts to open Wikipedia and search something
    [Documentation]    This test case attempts to open Wikipedia and search something. Along with this it also checks if the there exists a table on the page including the searched phrase. Finally the testa case attempts to log in with made-up user credentials and checks if an error box shows up.
    Open Wikipedia
    Enter Search Word    ${SEARCH WORD}
    Search With Enter
    Verify Wikipedia RF Opened
    Check Table Info    ${SEARCH WORD}
    Press Log In
    Enter Credentials
    Attempt Login
    Verify Failed Login
    [Teardown]    Wrap Up
