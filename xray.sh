#!/bin/sh
if [ ! -f UUID ]; then
  UUID="6d877a9b-027c-4b52-9646-4e5bc66e7fc9"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

