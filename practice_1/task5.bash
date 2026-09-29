#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Command accepts at least 1 argument"
    exit 1
fi
cat "$1" > /usr/local/bin/"$1"
chmod +x /usr/local/bin/"$1"
