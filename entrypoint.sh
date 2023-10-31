#!/bin/sh

INPUT=${INPUT_DIR:-"/tmp/config"}
OUTPUT=${OUTPUT_DIR:-"/config"}

mkdir -p "$OUTPUT"

echo "Loading config files from $INPUT"

for file in "$INPUT/*"; do
  if [ -f "$$file" ]; then
    filename=$(basename "$$file")
    envsubst <"$$file" >"$OUTPUT/$$filename"
    echo "Loaded $$filename"
  fi
done

echo "Writing config files to $OUTPUT"
