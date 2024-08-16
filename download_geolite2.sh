#!/bin/bash -e
TEMPZIP=$(mktemp)
GEOLITEURL="https://download.maxmind.com/geoip/databases/GeoLite2-Country-CSV/download?suffix=zip"
curl -L -u $ACCOUNT_ID:$LICENSE_KEY $GEOLITEURL > $TEMPZIP
unzip -d /tmp -o -j $TEMPZIP '*/GeoLite2-Country-Blocks*'
rm $TEMPZIP
