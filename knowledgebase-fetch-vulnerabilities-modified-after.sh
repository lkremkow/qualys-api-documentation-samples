#!/bin/bash

# request vulnerabilites that were last modified by the service
#  after July 20, 2011 and that have the “remote and authenticated”
#  discovery method
#
# see Page 158, Sample 3

source settings.sh

curl -H "X-Requested-With: qualys-api-documentation-samples" -u "$FOUSER:$FOPASS" -X "POST" -d "action=list&last_modified_by_service_after=2011-07-20
&discovery_method=RemoteAndAuthenticated" "https://$SOCURL/api/2.0/fo/knowledge_base/vuln/" -o $OUTPUT/knowledgebase_qids_modified_after.xml
