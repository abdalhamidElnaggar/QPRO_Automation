*** Settings ***
Resource  AllResources_res.robot

*** Keywords ***
Open Web Browser At Home Page
    Open Web Browser
    Go To  ${WEB_URL}
    Check home page is loaded


