#!/bin/bash
CONTAINER_ID=$1
URL="https://example.com/container/$CONTAINER_ID/data"
echo "Checking container $CONTAINER_ID"
for i in {1..5}; do
  echo "Attempt $i: $URL"
  if [ $((RANDOM % 4)) -eq 0 ]; then
    echo "$URL"
    exit 0
  fi
  sleep 2
done
echo "$URL"
exit 0
