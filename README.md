# Old Man Yells at Cloud Meme Generator - Shell Script

This shell script generates the classic Simpsons meme "Old Man Yells at Cloud"
by placing an image of something (the cloud) in the top-left corner of an image
of Abe Simpson (the old man yelling).

## Usage

```bash
./generate_meme.sh input_image output_image
```

- `input_image` : Path to the thing the old man will yell at (required).
- `output_image` : Path to the output image (required).

## Example

```bash
./generate_meme.sh cloud.png old_man_yells_at_cloud.png
```

This will create a meme image where Abe Simpson yells at the provided cloud
image.

## Requirements

- ImageMagick: Make sure ImageMagick is installed to use this script.

## License

This script is licensed under the [MIT License](LICENSE).
