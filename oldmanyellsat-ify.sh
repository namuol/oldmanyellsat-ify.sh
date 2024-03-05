#!/bin/bash

# Function to display usage instructions
usage() {
    echo "Usage: $0 input_image output_image"
    echo "  input_image   : Path to the thing the old man will yell at (required)"
    echo "  output_image  : Path to the output image (required)"
}

# Check if ImageMagick is installed
if ! command -v convert &> /dev/null; then
    echo "ImageMagick is not installed. Please install it first."
    exit 1
fi

# Ensure correct number of arguments
if [ "$#" -ne 2 ]; then
    usage
    exit 1
fi

# Input images
image_A="$1"
image_B="./old-man-yells-at-.png"

# Output image
output_image="$2"

width_A=57
height_A=57

# Place image A in the top-left corner of image B, scaling it to the calculated dimensions
convert "$image_B" "$image_A" -geometry "${width_A}x${height_A}^+0+0" -composite "$output_image"

echo "Image created: $output_image"
