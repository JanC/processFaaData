#!/bin/bash
set -eu                # Always put this in Bourne shell scripts
IFS=$(printf '\n\t')   # Always put this in Bourne shell scripts
mkdir -p /data/downloads
./freshen_local_nasr.sh /data/downloads && \
  FILE=$(ls /data/downloads/28DaySubscription_Effective_*.zip) && \
  ./create_databases.sh "$FILE" && \
  cp *.sqlite /data
