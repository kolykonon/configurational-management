#!/bin/bash
cd /
grep -o ^[^:]* etc/passwd| sort
