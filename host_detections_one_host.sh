#! /bin/bash

# request all host detections of active vulnerabilities, limited to one host
#

# (not from documentation)

source settings.sh

curl -H "X-Requested-With: qualys-api-documentation-samples" -u "$FOUSER:$FOPASS" -X "POST" -d "action=list&show_results=1&show_reopened_info=0&output_format=XML&truncation_limit=1&severities=1-5&status=New,Re-Opened,Fixed" "https://$SOCURL/api/2.0/fo/asset/host/vm/detection/" -o $OUTPUT/host_list_detections_for_one_host.xml
