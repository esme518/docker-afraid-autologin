#!/bin/sh
set -e

# Set settings.py
if [ ! -f /app/settings.py ]; then
	cp /app/settings.init /app/settings.py
	sed -i "s/username/$USERNAME/g" /app/settings.py
	sed -i "s/password/$PASSWORD/g" /app/settings.py
fi

exec "$@"
