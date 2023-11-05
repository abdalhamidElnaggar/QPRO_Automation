*** Settings ***
Resource  ../../Resources/Common/AllResources_res.robot
Test Setup  Intialize Test Data
Test Teardown  Close Web Browser

*** Test Cases ***

Check thinking in html book is displayed along with its price
    [Tags]  UI
    Open Web Browser At Home Page
    Check A Specific Book Is Displayed With The Correct Price in home page  Thinking in HTML  ₹400.00

Check add to basket for thinking in html price
	[Tags]  UI
	Open Web Browser At Home Page
	Check A Specific Book Is Displayed With The Correct Price in home page  Thinking in HTML  ₹400.00
	Click add to basket for a specific book in home page  Thinking in HTML
	Check view basket button is displayed in home page
	Check add to basket button is displayed as added after clicking in home page  Thinking in HTML

Check clicking on shopping card
	[Tags]  UI
	Open Web Browser At Home Page
	Check A Specific Book Is Displayed With The Correct Price in home page  Thinking in HTML  ₹400.00
	Click add to basket for a specific book in home page  Thinking in HTML
    Check website header is displayed
    Click on basket icon in header
    Check basket page is loaded
    Check a specific book is added to basket  Thinking in HTML
    Check expected book price is displayed in basket  ₹400.00

Check proceed to checkout and form details
	[Tags]  UI
	Open Web Browser At Home Page
	Check A Specific Book Is Displayed With The Correct Price in home page  Thinking in HTML  ₹400.00
	Click add to basket for a specific book in home page  Thinking in HTML
	Check website header is displayed
    Click on basket icon in header
    Check basket page is loaded
    click proceed to checkout in basket page
    Check checkout page is loaded
    Check checkout form is displayed in checkout page

Check checkout flow E2E
	[Tags]  UI
	Open Web Browser At Home Page
    Check A Specific Book Is Displayed With The Correct Price in home page  Thinking in HTML  ₹400.00
    Click add to basket for a specific book in home page  Thinking in HTML
	Check view basket button is displayed in home page
	Check add to basket button is displayed as added after clicking in home page  Thinking in HTML
	Check website header is displayed
    Click on basket icon in header
    Check basket page is loaded
    Check a specific book is added to basket  Thinking in HTML
    Check expected book price is displayed in basket  ₹400.00
    click proceed to checkout in basket page
    Check checkout page is loaded
    Check checkout form is displayed in checkout page
    Type valid information in billing details form
    Click place order button in checkout page
    Check thank you page is loaded