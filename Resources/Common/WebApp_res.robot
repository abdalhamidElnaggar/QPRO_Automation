*** Settings ***
Resource  AllResources_res.robot

*** Variables ***
${WEB_URL}  https://practice.automationtesting.in/
${BROWSER}  Chrome   # firefox   headlessfirefox    headlesschrome
${SCREEN_RESOLUTION}  1920x1080  #update this variable for different screen sizes ( ex mobiles)

*** Keywords ***
Open Web Browser
    Open Browser  about:blank  ${BROWSER}
    ${width}  ${hight}  Split String  ${SCREEN_RESOLUTION}  x
    Set Window Size    ${width}    ${hight}
    Set Selenium Implicit Wait  5s

Close Web Browser
	Close Browser