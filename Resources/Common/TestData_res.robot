*** Settings ***
*** Variables ***
${User_EMAIL}        test+automation@test.com
${User_first_Name}  TBD
${User_last_name}  TBD
${User_last_name}  TBD
${user_phone}  123456789
${user_address}  TBD
${user_city}  cairo
${user_state}  cairo
${user_post_code}  1234

*** Keywords ***
Intialize Test Data
    ${first_Name}  Faker.First Name
    ${last_Name}  Faker.Last Name
    ${address}  Faker.Street Address
    ${variant}  Faker.Random Number	 digits=7  fix_len=False
    Set Test Variable  ${User_EMAIL}  test+automation+${variant}@test.com
    Set Test Variable  ${User_first_Name}  ${first_Name}
    Set Test Variable  ${User_last_name}  ${last_Name}
    Set Test Variable  ${user_address}  ${address}
