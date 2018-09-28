#! /bin/bash

# add IP addresses to a subscription
#
# in this example we save some fake IPs to
# a file called list_of_ips_for_qualys.csv, which we read to add to
# the IPs to the subscrtiption
#
# Page 300

source settings.sh

echo "1.1.1.1"  > "$OUTPUT"/list_of_ips_for_qualys.csv
echo "1.1.1.2" >> "$OUTPUT"/list_of_ips_for_qualys.csv

curl -H "X-Requested-With: qualys-api-documentation-samples" -u "$FOUSER:$FOPASS" -H "Content-Type:text/csv" --data-binary @"$OUTPUT"/list_of_ips_for_qualys.csv "https://$SOCURL/api/2.0/fo/asset/ip/?action=add&enable_vm=1&enable_pc=0&tracking_method=IP" -o "$OUTPUT"/add_ips_response.xml

rm "$OUTPUT"/list_of_ips_for_qualys.csv
