#!/bin/bash

# request all details for CID:1045 from Compliance Controls library
#
# (not from documentation)

source settings.sh

curl -H "X-Requested-With: qualys-api-documentation-samples" -u "$FOUSER:$FOPASS" -X "POST" -d "action=list&details=All&ids=1045" "https://$SOCURL/api/2.0/fo/compliance/control/" -o $OUTPUT/compliance_control_cid_1045.xml
