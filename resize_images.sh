#!/bin/bash

# Define input file and sizes
INPUT="./assets/flowers.avif"
OUTPUT_DIR="./resized_images"
SIZES=("1920x1080" "1280x720" "640x360")

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Loop through sizes and generate images
for SIZE in "${SIZES[@]}"; do
  OUTPUT_FILE="$OUTPUT_DIR/$(basename "$INPUT" .avif)_${SIZE}.avif"
  magick "$INPUT" -resize "$SIZE" "$OUTPUT_FILE"
  echo "Created $OUTPUT_FILE"
done