#!/bin/bash

# request all details for QID:27032 from KnowledgeBase
#
# (not from documentation)

source settings.sh

curl -H "X-Requested-With: qualys-api-documentation-samples" -u "$FOUSER:$FOPASS" -X "POST" -d "action=list&details=All&ids=27032" "https://$SOCURL/api/2.0/fo/knowledge_base/vuln/" -o "$OUTPUT"/QID27032.xml
