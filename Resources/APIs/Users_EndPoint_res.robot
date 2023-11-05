*** Settings ***
Resource  ../../Resources/Common/AllResources_res.robot

*** Variables ***
${BASE_URL}    https://petstore3.swagger.io/api/v3

*** Keywords ***
Create User
    [Arguments]  ${user_data}
    ${response}    Post    ${BASE_URL}/user    data=${user_data}
    [Return]    ${response}

Get User
    [Arguments]    ${username}
    ${response}    Get     ${BASE_URL}/user/${username}
    [Return]    ${response}

Update User
    [Arguments]    ${username}  ${user_data}
    ${response}    Put    ${BASE_URL}/user/${username}    data=${user_data}
    [Return]    ${response}

Delete User
    [Arguments]    ${username}
    ${response}    Delete    ${BASE_URL}/user/${username}
    [Return]    ${response}
