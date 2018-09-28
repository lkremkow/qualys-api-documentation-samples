#! /bin/bash

# fetch a scan report based on scan reference
#
# (not from documentation)

source settings.sh

WASSCANID="3935070"

curl -H "X-Requested-With: qualys-api-documentation-samples" -u "$FOUSER:$FOPASS" -X "GET" "https://$SOCURL/qps/rest/3.0/download/was/wasscan/$WASSCANID" -o "$OUTPUT"/was_scan_$WASSCANID.xml
