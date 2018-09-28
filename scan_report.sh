#! /bin/bash

# fetch a scan report based on scan reference
#
# (not from documentation)

source settings.sh

SCANREPORTID="1530655982.22493"

curl -H "X-Requested-With: qualys-api-documentation-samples" -u "$FOUSER:$FOPASS" -X "GET" "https://$SOCURL/msp/scan_report.php?ref=scan/$SCANREPORTID" -o "$OUTPUT"/scan_report_$SCANREPORTID.xml
