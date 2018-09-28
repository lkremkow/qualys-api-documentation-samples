
#! /bin/bash

# modify tickets related to an Asset Group,
#   set them to Ignore and re-open automatically after 32 days
#
# (not from documentation)

source settings.sh

ASSETGROUPNAME="All"

curl -H "X-Requested-With: qualys-api-documentation-samples" -u "$FOUSER:$FOPASS" -X "GET" "https://$SOCURL/msp/ticket_edit.php?states=OPEN&asset_groups=$ASSETGROUPNAME&change_state=IGNORED&reopen_ignored_days=32" -o $OUTPUT/ticket_edit_response.xml
