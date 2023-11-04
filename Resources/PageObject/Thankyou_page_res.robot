*** Settings ***
Resource  ../Common/AllResources_res.robot

*** Keywords ***
Check thank you page is loaded
	Wait Until Location Contains  ${WEB_URL}checkout/order-received