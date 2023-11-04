*** Settings ***
Resource  ../Common/AllResources_res.robot

*** Variables ***
${Locator_header}  header
${Locator_header_view_basket_button}  //a[contains(@href,'basket')]

*** Keywords ***
Check website header is displayed
	Wait Until Page Contains Element  ${Locator_header}
	Wait Until Element Is Visible  ${Locator_header}

Click on basket icon in header
	Wait Until Page Contains Element  ${Locator_header_view_basket_button}
	Wait Until Element Is Visible  ${Locator_header_view_basket_button}
	Click Element  ${Locator_header_view_basket_button}
	Dismiss ads
