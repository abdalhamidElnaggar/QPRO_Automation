*** Settings ***
Resource  ../Common/AllResources_res.robot

*** Variables ***
${Locator_home_page_site_logo}  site-logo
${Locator_home_Page_dynamic_book_title}  //h3[text()='__REPLACE_TEXT__']
${Locator_home_page_dynamic_book_price}  (//h3[text()='__REPLACE_TEXT__']//following::ins//span[@class='woocommerce-Price-amount amount'])
${Locator_home_page_dynamic_book_Add_to_Basket}  (//h3[text()='__REPLACE_TEXT__']//following::a[contains(@class,'button')])[1]
${locator_home_page_view_basekt_button}  //a[@title='View Basket']
${locator_ads_close_button}  //*[text()='Close']

*** Keywords ***
Check home page is loaded
	Wait Until Location Contains  ${WEB_URL}
	Wait Until Page Contains Element  ${Locator_home_page_site_logo}
	Wait Until Element Is Visible  ${Locator_home_page_site_logo}

Check a specific book is displayed with the correct price in home page
	[Arguments]    ${bookTitle}  ${bookExpectedPrice}
	${bookTitleLocator}  Replace String  ${Locator_home_Page_dynamic_book_title}  __REPLACE_TEXT__   ${bookTitle}
	Wait Until Page Contains Element  ${bookTitleLocator}
    Wait Until Element Is Visible  ${bookTitleLocator}
    ${bookPriceLocator}  Replace String  ${Locator_home_page_dynamic_book_price}  __REPLACE_TEXT__   ${bookTitle}
    Wait Until Page Contains Element  ${bookPriceLocator}
    Wait Until Element Is Visible  ${bookPriceLocator}
    ${actualPrice}  Get Text  ${bookPriceLocator}
    Should Be Equal As Strings    ${actualPrice}  ${bookExpectedPrice}

Click add to basket for a specific book in home page
	[Arguments]    ${bookTitle}
    ${AddToBasketButton}  Replace String  ${Locator_home_page_dynamic_book_Add_to_Basket}  __REPLACE_TEXT__   ${bookTitle}
	Wait Until Page Contains Element  ${AddToBasketButton}
    Wait Until Element Is Visible  ${AddToBasketButton}
    Click Element  ${AddToBasketButton}

Check view basket button is displayed in home page
	Wait Until Page Contains Element  ${locator_home_page_view_basekt_button}
	Wait Until Element Is Visible  ${locator_home_page_view_basekt_button}

Check add to basket button is displayed as added after clicking in home page
	[Arguments]    ${bookTitle}
	${AddToBasketButton}  Replace String  ${Locator_home_page_dynamic_book_Add_to_Basket}  __REPLACE_TEXT__   ${bookTitle}
	Wait Until Page Contains Element  ${AddToBasketButton}
    Wait Until Element Is Visible  ${AddToBasketButton}
    ${classValue}  Get Element Attribute  ${AddToBasketButton}  class
    Should Contain  ${classValue}  added
    Dismiss ads

Dismiss ads
    ${status}  Run Keyword And Return Status
    ...  Wait Until Page Contains Element  ${locator_ads_close_button}
    Return From Keyword If  ${status}==${FALSE}
    Click Element  ${locator_ads_close_button}