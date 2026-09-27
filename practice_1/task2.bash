#!/bin/bash
cd /
grep -v '^#' /etc/protocols | awk '{print $2, $1}' | sort -rn | head -n 5
