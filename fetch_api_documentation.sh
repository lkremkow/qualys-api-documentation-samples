#!/bin/bash

# script to fetch all API documetation PDF files from Qualys

# directory where API documetation should go
DOCDIR='./doc'

if [[ ! -d "$DOCDIR" ]]
then
  mkdir "$DOCDIR"
fi

TMPFILE="$DOCDIR"/$RANDOM$RANDOM.tmp

echo
echo
echo "Qualys API Quick Reference for all APIs"
echo
curl -H "X-Requested-With: qualys-api-documentation-samples" "https://www.qualys.com/docs/qualys-api-quick-reference.pdf" -o $TMPFILE
if [[ -s $TMPFILE ]]
then
  mv $TMPFILE "$DOCDIR"/Qualys\ API\ Quick\ Reference.pdf
fi

echo
echo
echo "Qualys API (VM, SCA, PC) User Guide"
echo
curl -H "X-Requested-With: qualys-api-documentation-samples" "https://www.qualys.com/docs/qualys-api-vmpc-user-guide.pdf" -o $TMPFILE
if [[ -s $TMPFILE ]]
then
  mv $TMPFILE "$DOCDIR"/Qualys\ API\ VM\ SCA\ PC\ User\ Guide.pdf
  rm $TMPFILE
fi

echo
echo
echo "Qualys API (VM, SCA, PC) XML/DTD Reference"
echo
curl -H "X-Requested-With: qualys-api-documentation-samples" "https://www.qualys.com/docs/qualys-api-vmpc-xml-dtd-reference.pdf" -o $TMPFILE
if [[ -s $TMPFILE ]]
then
  mv $TMPFILE "$DOCDIR"/Qualys\ API\ VM\ SCA\ PC\ XML\ DTD\ Reference.pdf
fi

echo
echo
echo "API Limits"
echo
curl -H "X-Requested-With: qualys-api-documentation-samples" "https://www.qualys.com/docs/qualys-api-limits.pdf" -o $TMPFILE
if [[ -s $TMPFILE ]]
then
  mv $TMPFILE "$DOCDIR"/Qualys\ API\ Limits.pdf
fi

echo
echo
echo "Tracking API Usage"
echo
curl -H "X-Requested-With: qualys-api-documentation-samples" "https://www.qualys.com/docs/qualys-api-tracking-api-usage.pdf" -o $TMPFILE
if [[ -s $TMPFILE ]]
then
  mv $TMPFILE "$DOCDIR"/Qualys\ API\ Tracking\ API\ Usage.pdf
fi

echo
echo
echo "Cloud Agent (CA) API"
echo
curl -H "X-Requested-With: qualys-api-documentation-samples" "https://www.qualys.com/docs/qualys-ca-api-user-guide.pdf" -o $TMPFILE
if [[ -s $TMPFILE ]]
then
  mv $TMPFILE "$DOCDIR"/Cloud\ Agent\ API.pdf
fi

echo
echo
echo "Web Application Scanning (WAS) API"
echo
curl -H "X-Requested-With: qualys-api-documentation-samples" "https://www.qualys.com/docs/qualys-was-api-user-guide.pdf" -o $TMPFILE
if [[ -s $TMPFILE ]]
then
  mv $TMPFILE "$DOCDIR"/Web\ Application\ Scanning\ API\ User\ Guide.pdf
fi

echo
echo
echo "Web Application Firewall (WAF) API"
echo
curl -H "X-Requested-With: qualys-api-documentation-samples" "https://www.qualys.com/docs/qualys-waf-api-user-guide.pdf" -o $TMPFILE
if [[ -s $TMPFILE ]]
then
  mv $TMPFILE "$DOCDIR"/Web\ Application\ Firewall\ API\ User\ Guide.pdf
fi

echo
echo
echo "Malware Detection (MD) API"
echo
curl -H "X-Requested-With: qualys-api-documentation-samples" "https://www.qualys.com/docs/qualys-md-api-user-guide.pdf" -o $TMPFILE
if [[ -s $TMPFILE ]]
then
  mv $TMPFILE "$DOCDIR"/Malware\ Detection\ API\ User\ Guide.pdf
fi

echo
echo
echo "Asset Mgmt and Tagging v2 API"
echo
curl -H "X-Requested-With: qualys-api-documentation-samples" "https://www.qualys.com/docs/qualys-asset-management-tagging-api-v2-user-guide.pdf" -o $TMPFILE
if [[ -s $TMPFILE ]]
then
  mv $TMPFILE "$DOCDIR"/Asset\ Management\ and\ Tagging\ API\ v2\ User\ Guide.pdf
fi

echo
echo
echo "Continuous Monitoring (CM) API"
echo
curl -H "X-Requested-With: qualys-api-documentation-samples" "https://www.qualys.com/docs/qualys-cm-api-user-guide.pdf" -o $TMPFILE
if [[ -s $TMPFILE ]]
then
  mv $TMPFILE "$DOCDIR"/Continuous\ Monitoring\ API\ User\ Guide.pdf
fi

echo
echo
echo "Security Assessment Questionnaire (SAQ) API"
echo
curl -H "X-Requested-With: qualys-api-documentation-samples" "https://www.qualys.com/docs/qualys-saq-api-user-guide.pdf" -o $TMPFILE
if [[ -s $TMPFILE ]]
then
  mv $TMPFILE "$DOCDIR"/Security\ Assessment\ Questionnaire\ API\ User\ Guide.pdf
fi

echo
echo
echo "Qualys Subscription API"
echo
curl -H "X-Requested-With: qualys-api-documentation-samples" "https://www.qualys.com/docs/qualys-subscription-api-user-guide.pdf" -o $TMPFILE
if [[ -s $TMPFILE ]]
then
  mv $TMPFILE "$DOCDIR"/Subscription\ Info\ API\ User\ Guide.pdf
fi
