*** Settings ***
Library  SeleniumLibrary
Resource  /Users/maneshmohankadam/PycharmProjects/PythonRobotFramework/Resources/common_functionalities.robot

Test Setup    Start TestCase
Test Teardown    Finish TestCase
*** Variables ***
${search_text}  mobile
*** Test Cases ***
This is simple test case
    [documentation]  This is ebay test
    [Tags]  Regression

#    Open Browser  https://www.ebay.com  chrome
#    input text  //*[@id="gh-ac"]  mobile
#    press keys  //*[@id="gh-search-btn"]  [Return]
#    page should contain  results for mobile
#    Close Browser


    Enter Text and Submit
    Verify Text


*** Keywords ***

Enter Text and Submit
    Input Text    id:gh-ac    ${search_text}
    Click Button    id:gh-search-btn
Verify Text
    Page Should Contain    results for ${search_text}


