*** Variables ***
${MSO-LO_HOST}      localhost    # Hostname of the MSO-LO
${MSO-LO_PORT}      80	    # Listening port of the MSO-LO
${HTTP}    http
${MSO-LO_BASE_API}  ${HTTP}://${MSO-LO_HOST}:${MSO-LO_PORT}

${apiRoot}        nfvo
${nfvoId}         1

${nsdId}    4125ae83-6614-4bf6-be1a-b8aa16e7e42c

#${vimNetworkName}   test
#${vldName}          mgmt_vl

#${vimAccountIds}    ['64690905-0fe0-4dc4-967c-292eb497e46f', '444bd22e-dd1a-4672-b12b-2604f21f50e6']

${notificationUri}   http://192.168.18.14:8083/

${MAX_WAIT}   2 min

# This should not be changed
${SCHEMAS_PATH}     ../tests/response_schemas.py
${AUTHORIZATION}    Bearer    QWxhZGRpbjpvcGVuIHNlc2FtZQ==
${CONTENT_TYPE}    application/json
${CONTENT_TYPE_PATCH}    application/merge-patch+json
${ACCEPT_JSON}         application/json
${ACCEPT}         application/json
${nfvoIdinexistent}         80
${AUTH_USAGE}     1
${WRONG_AUTHORIZATION}    Bearer    XXXXXWRONGXXXXX
${INTERVAL_WAIT}    2 s
${nsInstanceId}       cc256072-2001-434c-8be9-0bd8609cef9f
${vnfInstanceIds}    []
${nsInstanceIdinexistent}       6fc3539c-e602-4afa-8e13-962fb5a7d81xxxxxxx
${ConflictNsInstanceId}    007c111c-e602-4afa-8e13-962fb5a7d81d
${nsInstanceName}    Test-nsInstance
${nsInstanceDescription}    description ns
${SINGLE_FILE_VNFD}    1    # If VNFD is PLAIN TEXT
${ACCEPT_PLAIN}    text/plain
${ACCEPT_ZIP}     application/zip
${nsPkgId_processing}    007c111c-38a1-42c0-a666-7475ecb1567c
${ARTIFACT_TYPE}    application/octet-stream
${ARTIFACT_ID}    artifactId
${WRONG_ACCEPT}    application/json
${nsLcmOpOccId}    6fc3539c-e602-4afa-8e13-962fb5a7d81d
${CancelMode}    GRACEFUL
${NFVO_DUPLICATION}    0
${sub_filter}    filter
${sub_filter_invalid}    filter_invalid
${fields}         criteria,objectInstanceIds

${response}    {}


${NEG_FILTER}    attribute_not_exist=some_value
${NEG_SELECTOR}    fields=wrong_field
