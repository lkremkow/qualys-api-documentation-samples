#! /bin/bash

# request all tickets for all hosts
#

# (not from documentation)

source settings.sh

curl -H "X-Requested-With: qualys-api-documentation-samples" -u "$FOUSER:$FOPASS" -X "GET" "https://$SOCURL/msp/ticket_list.php?states=OPEN,IGNORED,RESOLVED,CLOSED" -o $OUTPUT/ticket_list_complete.xml
