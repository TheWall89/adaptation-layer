*** Settings ***
Resource    environment/variables.robot
Variables   ${SCHEMAS_PATH}
Resource   NSLCMOperationKeywords.robot
Library    REST    ${MSO-LO_BASE_API}
Library    OperatingSystem
Library    JSONLibrary
Library    JSONSchemaLibrary    schemas/


*** Test Cases ***

POST Subscription Creation 201
    [Documentation]    Test ID: mso-lo-test-
    ...    Test title: POST Subscription Creation 201
    POST New Subscription Good
    Check HTTP Response Status Code Is    201
    Check HTTP Response Body Json Schema Is    ${subscription_schema}
    Check Sub Id

POST Subscription Creation 400
    [Documentation]    Test ID: mso-lo-test-
    ...    Test title: POST Subscription Creation 400
    POST New Subscription Bad
    Check HTTP Response Status Code Is    400

GET Subscription List 200
    [Documentation]    Test ID: mso-lo-test-
    ...    Test title: GET Subscription List
    GET Subscriptions
    Check HTTP Response Status Code Is    200
    Check HTTP Response Body Json Schema Is    ${subscription_list_schema}

GET Individual Subscription information 200
    [Documentation]    Test ID: mso-lo-test-
    ...    Test title: GET Individual Subscription information 200
    GET Individual Subscription Good
    Check HTTP Response Status Code Is    200
    Check HTTP Response Body Json Schema Is    ${subscription_schema}

GET Individual Subscription information 404
    [Documentation]    Test ID: mso-lo-test-
    ...    Test title: GET Individual Subscription information 404
    GET Individual Subscription Not Found
    Check HTTP Response Status Code Is    404

DELETE Individual Subscription information 204
    [Documentation]    Test ID: mso-lo-test-
    ...    Test title: DELETE Individual Subscription information 200
    DELETE Individual Subscription Good
    Check HTTP Response Status Code Is    204

DELETE Individual Subscription information 404
    [Documentation]    Test ID: mso-lo-test-
    ...    Test title: DELETE Individual Subscription information 404
    DELETE Individual Subscription Not Found
    Check HTTP Response Status Code Is    404

POST Notification Creation 204
    [Documentation]    Test ID: mso-lo-test-
    ...    Test title: POST Notification Creation 204
    POST New Notification Good
    Check HTTP Response Status Code Is    204

POST Notification Creation 400
    [Documentation]    Test ID: mso-lo-test-
    ...    Test title: POST Subscription Creation 400
    POST New Notification Bad
    Check HTTP Response Status Code Is    400
