#!/bin/sh

# Set settings.py
sed -i "s/username/$USERNAME/g" /app/settings.py
sed -i "s/password/$PASSWORD/g" /app/settings.py

exec "$@"
