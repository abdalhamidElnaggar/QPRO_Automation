*** Settings ***
Resource  ../../Resources/Common/AllResources_res.robot

*** Test Cases ***
Create User
    [Documentation]    Create a new user
    [Tags]    API
     ${User_data}    Create Dictionary
    ...    id=${Pet_store_user_id}
    ...    username=${Pet_store_user_name}
    ...    firstName=${Pet_store_user_firstname}
    ...    lastName=${Pet_store_user_lastname}
    ...    email=${Pet_store_user_email}
    ...    password=${Pet_store_user_password}
    ...    phone=${Pet_store_user_phone}
    ...    userStatus=${Pet_store_user_userstatus}
    ${response}  Create User  ${user_data}
    ${response_body}    Set Variable    ${response.json()}
    Dictionary Should Contain Key    ${response_body}    id
    Dictionary Should Contain Key    ${response_body}    username
    Dictionary Should Contain Key    ${response_body}    firstName
    Dictionary Should Contain Key    ${response_body}    lastName
    Dictionary Should Contain Key    ${response_body}    email
    Dictionary Should Contain Key    ${response_body}    password
    Dictionary Should Contain Key    ${response_body}    phone
    Should Be Equal    ${response_body['username']}    ${Pet_store_user_name}
    Should Be Equal    ${response_body['email']}    ${Pet_store_user_email}
    Should Be Equal    '${response.status_code}'    '200'

Read User
    [Documentation]    Retrieve user details
    [Tags]    API
    ${response}  Get User   ${Pet_store_user_name}
    ${response_body}    Set Variable    ${response.json()}
    Dictionary Should Contain Key    ${response_body}    id
    Dictionary Should Contain Key    ${response_body}    username
    Dictionary Should Contain Key    ${response_body}    firstName
    Dictionary Should Contain Key    ${response_body}    lastName
    Dictionary Should Contain Key    ${response_body}    email
    Dictionary Should Contain Key    ${response_body}    password
    Dictionary Should Contain Key    ${response_body}    phone
    Should Be Equal    ${response_body['username']}    ${Pet_store_user_name}
    Should Be Equal    ${response_body['email']}    ${Pet_store_user_email}
    Should Be Equal    '${response.status_code}'    '200'

Update User
    [Documentation]    Update user details
    [Tags]    API
     ${User_data}    Create Dictionary
    ...    id=${Pet_store_user_id}
    ...    username=${Pet_store_user_name}
    ...    firstName=${Pet_store_user_firstname}
    ...    lastName=${Pet_store_user_lastname}
    ...    email=${Pet_store_user_email}
    ...    password=${Pet_store_user_password}
    ...    phone=${Pet_store_user_phone}
    ...    userStatus=${Pet_store_user_userstatus}

    ${response}  Update User  ${Pet_store_user_name}  ${User_data}
    ${response_body}    Set Variable    ${response.json()}
    Dictionary Should Contain Key    ${response_body}    id
    Dictionary Should Contain Key    ${response_body}    username
    Dictionary Should Contain Key    ${response_body}    firstName
    Dictionary Should Contain Key    ${response_body}    lastName
    Dictionary Should Contain Key    ${response_body}    email
    Dictionary Should Contain Key    ${response_body}    password
    Dictionary Should Contain Key    ${response_body}    phone
    Should Be Equal    ${response_body['username']}    ${Pet_store_user_name_update}
    Should Be Equal    ${response_body['email']}    ${Pet_store_user_email}
    Should Be Equal    '${response.status_code}'    '200'

Delete User
    [Documentation]    Delete a user
    [Tags]    API
    ${response}  Delete User  ${Pet_store_user_name}
    Should Be Equal    '${response.status_code}'    '200'
