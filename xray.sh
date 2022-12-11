#!/bin/sh
if [ ! -f UUID ]; then
  UUID="bc362ebe-3694-4166-8ddf-d5da58cf4963"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

