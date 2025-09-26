#!/bin/bash
set -e

CONTAINER_ID=$1
URL="https://example.com/container/$CONTAINER_ID/data"

echo "Checking readiness for container: $CONTAINER_ID"

# Simulate waiting loop
for i in {1..5}; do
  echo "Attempt $i: checking $URL"
  # Simulate 30-min delay with randomness (25% chance it's ready each loop)
  if [ $((RANDOM % 4)) -eq 0 ]; then
    echo "URL=$URL"
    exit 0
  fi
  sleep 10
done

echo "Timed out waiting for URL"
exit 1
