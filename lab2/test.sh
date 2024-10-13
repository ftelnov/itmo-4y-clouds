#!/bin/bash

BAD_OUTPUT=$(docker run $(docker build -f bad.Dockerfile -q .))
GOOD_OUTPUT=$(docker run $(docker build -f good.Dockerfile -q .))
EXPECTED="Some example help.

Available options:
- drink
- do not drink"

if [ "$GOOD_OUTPUT" != "$EXPECTED" ]; then
  echo "Good output is not correct, got: $GOOD_OUTPUT"
  exit 1
fi

if [ "$GOOD_OUTPUT" != "$BAD_OUTPUT" ]; then
  echo "Not the same output for bad one: $BAD_OUTPUT"
  exit 1
fi

echo "Everything is OK"
