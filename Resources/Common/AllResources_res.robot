*** Settings ***
### Libraries ###
### any new used library should be added here only and be shared accross project files ###
Library  String
Library  SeleniumLibrary  screenshot_root_directory=EMBED
Library  RequestsLibrary
Library  FakerLibrary  locale=en_US  WITH NAME  Faker
Library  Collections


### Common files ###
### any common files should be added at this section ( ex : webApp_res)  ###
Resource  WebApp_res.robot
Resource  WebApp_EntryPoints_res.robot
Resource  TestData_res.robot
Resource  APIs_user_data_res.robot

### page objects  ###
### all web app pages object files to be added at this section ###
Resource  ../PageObject/HomePage_res.robot
Resource  ../PageObject/Header_res.robot
Resource  ../PageObject/Basket_res.robot
Resource  ../PageObject/Checkout_res.robot
Resource  ../PageObject/Thankyou_page_res.robot

### APIs Resources  ###
Resource    ../APIs/Users_EndPoint_res.robot