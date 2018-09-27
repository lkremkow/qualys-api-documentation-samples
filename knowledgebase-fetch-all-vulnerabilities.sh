#!/bin/bash

# request all vulnerabilities in the KnowledgeBase showing basic details
# 
# Page 158, Sample 1

source settings.sh

curl -H "X-Requested-With: qualys-api-documentation-samples" -u "$FOUSER:$FOPASS" -X "POST" -d "action=list" "https://$SOCURL/api/2.0/fo/knowledge_base/vuln/" -o $OUTPUT/knowledgebase_with_basic_detail.xml
