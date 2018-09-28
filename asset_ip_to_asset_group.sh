#! /bin/bash

# edit an Asset Group, add IP addresses to it
#
# in this example we take some fake IPs from
# a file called list_of_ips_for_qualys.csv, to add it to an Asset Group
#
# Page 354

source settings.sh

ASSETGROUPID="90511885"

LISTOFIPS="1.1.1.1,1.1.1.2"

curl -H "X-Requested-With: qualys-api-documentation-samples" -u "$FOUSER:$FOPASS" -X "POST" -d "id=$ASSETGROUPID&add_ips=$LISTOFIPS" "https://$SOCURL/api/2.0/fo/asset/group/?action=edit" -o "$OUTPUT"/add_ips_to_asset_group_response.xml
