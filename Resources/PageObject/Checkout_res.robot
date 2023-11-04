*** Settings ***
Resource  ../Common/AllResources_res.robot

*** Variables ***
${Locator_checkout_page_checkout_form}  //form[@name='checkout']
${Locator_checkout_page_first_name}  billing_first_name
${Locator_checkout_page_last_name}  billing_last_name
${Locator_checkout_page_email}  billing_email
${Locator_checkout_page_phone}  billing_phone
${Locator_checkout_page_address}  billing_address_1
${Locator_checkout_page_city}  billing_city
${Locator_checkout_page_state}  billing_state
${Locator_checkout_page_postal_code}  billing_postcode
${Locator_checkout_page_country}  s2id_billing_country
${Locator_checkout_page_place_order_button}  place_order

*** Keywords ***
Check checkout page is loaded
	Wait Until Location Contains  ${WEB_URL}checkout

Check checkout form is displayed in checkout page
	Wait Until Page Contains Element  ${Locator_checkout_page_checkout_form}
	Wait Until Element Is Visible  ${Locator_checkout_page_checkout_form}

Type valid information in billing details form
	Type first name in billing form  ${User_first_Name}
    Type last name in billing form  ${User_last_name}
    Type email address in billing form  ${User_EMAIL}
    Type phone in billing form  ${user_phone}
    Type address in billing form  ${user_address}
    Type city in billing form  ${user_city}
    Type postal code in billing form  ${user_post_code}

Type first name in billing form
	[Arguments]  ${name}
	Wait Until Page Contains Element  ${Locator_checkout_page_first_name}
	Wait Until Element Is Visible  ${Locator_checkout_page_first_name}
	Input Text  ${Locator_checkout_page_first_name}  ${name}

Type last name in billing form
	[Arguments]  ${name}
	Wait Until Page Contains Element  ${Locator_checkout_page_last_name}
	Wait Until Element Is Visible  ${Locator_checkout_page_last_name}
	Input Text  ${Locator_checkout_page_last_name}  ${name}

Type email address in billing form
	[Arguments]  ${email}
	Wait Until Page Contains Element  ${Locator_checkout_page_email}
	Wait Until Element Is Visible  ${Locator_checkout_page_email}
	Input Text  ${Locator_checkout_page_email}  ${email}

Type phone in billing form
	[Arguments]  ${phone}
	Wait Until Page Contains Element  ${Locator_checkout_page_phone}
	Wait Until Element Is Visible  ${Locator_checkout_page_phone}
	Input Text  ${Locator_checkout_page_phone}  ${phone}

Type address in billing form
	[Arguments]  ${address}
	Wait Until Page Contains Element  ${Locator_checkout_page_address}
	Wait Until Element Is Visible  ${Locator_checkout_page_address}
	Input Text  ${Locator_checkout_page_address}  ${address}

Type city in billing form
	[Arguments]  ${city}
	Wait Until Page Contains Element  ${Locator_checkout_page_city}
	Wait Until Element Is Visible  ${Locator_checkout_page_city}
	Input Text  ${Locator_checkout_page_city}  ${city}

Type postal code in billing form
	[Arguments]  ${postalcode}
	Wait Until Page Contains Element  ${Locator_checkout_page_postal_code}
	Wait Until Element Is Visible  ${Locator_checkout_page_postal_code}
	Input Text  ${Locator_checkout_page_postal_code}  ${postalcode}

Click place order button in checkout page
	Wait Until Page Contains Element  ${Locator_checkout_page_place_order_button}
	Wait Until Element Is Visible  ${Locator_checkout_page_place_order_button}
	Click Element  ${Locator_checkout_page_place_order_button}