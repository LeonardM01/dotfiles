#!/bin/sh

# Directory of the script
DIR=$(dirname "$0")

# File containing the list of VS Code extensions
EXTENSIONS_FILE="$DIR/extensions.txt"

# Check if the extensions file exists
if [ ! -f "$EXTENSIONS_FILE" ]; then
  echo "The extensions file does not exist: $EXTENSIONS_FILE"
  exit 1
fi

# List .txt files in the directory
echo "Listing .txt files in the directory:"
ls $DIR/*.txt

# Read each line in the extensions file and install the extension
while IFS= read -r extension
do
  echo "Installing extension: $extension"
  code --install-extension "$extension" --force
done < "$EXTENSIONS_FILE"
