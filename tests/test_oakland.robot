*** Settings ***
Documentation     A test suite testing search options for food in Oakland
...               Testing selection, filter by price, filter by review count

Resource        ./../resources/resource.robot
Test Setup      Open Browser to Url
Test Teardown   Close Browser

*** Keywords ***

Search Food in Oakland
    Input Food  food
    Input Location  Oakland, CA
    Click Button    id:header-search-submit


*** Test Cases ***

Search Food in Oakland and Select First Business
    Search Food in Oakland
    Click Element   xpath://*[@id="wrap"]/div[3]/div[2]/div[2]/div/div[1]/div[1]/div/ul/li[2]/div/div/div/div[2]/div[1]/div[1]/div[1]/div[1]

Search Food in Oakland by Price
    Search Food in Oakland
    Click Element   name:all_filters_toggle
    Click Element   xpath://*[@id="wrap"]/div[3]/div[2]/div[1]/div/div/div[3]/div[1]/div[2]/ul/li[1]/div


Search Food in Oakland by Most Reviewed
    Search Food in Oakland
    Click Element   name:all_filters_toggle
    Click Element   xpath://*[@id="wrap"]/div[3]/div[2]/div[1]/div/div/div[3]/div[2]/div/div/div[1]/div/ul/li[3]/label