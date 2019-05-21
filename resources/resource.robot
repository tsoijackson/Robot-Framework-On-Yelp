
*** Settings ***
Library         Selenium2Library


*** Variables ***
${URL}       https://www.yelp.com/
${BROWSER}      Chrome


*** Keywords ***

Open Browser to Url
    Open Browser    ${URL}  ${BROWSER}

Input Food
    [Arguments]     ${food}
    Input Text      id:find_desc    ${food}

Input Location
    [Arguments]     ${location}
    Input Text      id:dropperText_Mast    ${location}