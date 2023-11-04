*** Settings ***
Resource  ../Common/AllResources_res.robot

*** Variables ***
${Locator_basket_page_product_title}  //td[@data-title="Product"]//a
${Locator_basket_page_product_price}  //td[@data-title='Price']//span
${Locator_basket_page_proceed_to_checkout}  //a[contains(@href,'checkout')]

*** Keywords ***
Check basket page is loaded
	Wait Until Location Contains  ${WEB_URL}basket

Check a specific book is added to basket
	[Arguments]  ${ExpectedbookTitle}
	Wait Until Page Contains Element  ${Locator_basket_page_product_title}
	Wait Until Element Is Visible  ${Locator_basket_page_product_title}
	${actualBookTitle}  Get Text  ${Locator_basket_page_product_title}
	Should Be Equal As Strings  ${ExpectedbookTitle}  ${actualBookTitle}

Check expected book price is displayed in basket
	[Arguments]  ${ExpectedbookPrice}
	Wait Until Page Contains Element  ${Locator_basket_page_product_price}
	Wait Until Element Is Visible  ${Locator_basket_page_product_price}
	${actualBookPrice}  Get Text  ${Locator_basket_page_product_price}
	Should Be Equal As Strings  ${ExpectedbookPrice}  ${actualBookPrice}

click proceed to checkout in basket page
	Wait Until Page Contains Element  ${Locator_basket_page_proceed_to_checkout}
	Wait Until Element Is Visible  ${Locator_basket_page_proceed_to_checkout}
	Click Element  ${Locator_basket_page_proceed_to_checkout}
