#! /bin/bash

# host_detections_vulnerabilities_with_threats.sh

# request host detections of active vulnerabilities that
#   are related to exploitable vulenrabilities, as based on a Search list
#
#   This script requires you to have created a Search List called "Exploitable"
#
# (not from documentation)

# change this to the name of your Search List
SEARCHLISTNAME="Exploitable"

source settings.sh

curl -H "X-Requested-With: qualys-api-documentation-samples" -u "$FOUSER:$FOPASS" "https://$SOCURL/api/2.0/fo/asset/host/vm/detection/?action=list&show_results=1&show_reopened_info=0&output_format=XML&truncation_limit=100&include_search_list_titles=$SEARCHLISTNAME&status=New,Re-Opened" -o "$OUTPUT"/host_list_detections_for_exploitable_vulnerabilities.xml
