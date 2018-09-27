#!/bin/bash

# request patchable vulnerabilities for QIDs 1-200, showing all details
#
# see Page 158, Sample 2

source settings.sh

curl -H "X-Requested-With: qualys-api-documentation-samples" -u "$FOUSER:$FOPASS" -X "POST" -d "action=list&ids=1-200&is_patchable=1&details=All" "https://$SOCURL/api/2.0/fo/knowledge_base/vuln/" -o $OUTPUT/knowledgebase_some_that_are_patchable.xml
