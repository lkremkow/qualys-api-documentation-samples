#! /bin/bash

# launch scan using
#   target IP address,
#   Option Profile by ID,
#   and Appliance by name
#
# page 29

source settings.sh

SCANTITLE="sample"
TARGETIP="1.1.1.1"
OPTIONPROFILEID="00000000"
APPLIANCENAME="External"

curl -H "X-Requested-With: qualys-api-documentation-samples" -u "$FOUSER:$FOPASS" -X "POST" -d "action=launch&scan_title=$SCANTITLE&echo_request=0&ip=$TARGETIP&option_id=$OPTIONPROFILEID&iscanner_name=$APPLIANCENAME" "https://$SOCURL/api/2.0/fo/scan/" -o "$OUTPUT"/launch_scan_response.xml
