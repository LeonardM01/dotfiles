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

# Copy settings.json to VS Code
SETTINGS_FILE="$DIR/settings.json"
if [ -f "$SETTINGS_FILE" ]; then
  echo "Copying settings.json to VS Code"
  cp "$SETTINGS_FILE" "$HOME/.config/Code/User/settings.json"
else
  echo "The settings.json file does not exist: $SETTINGS_FILE"
fi

# Copy keybindings.json to VS Code
KEYBINDINGS_FILE="$DIR/keybindings.json"
if [ -f "$KEYBINDINGS_FILE" ]; then
  echo "Copying keybindings.json to VS Code"
  cp "$KEYBINDINGS_FILE" "$HOME/.config/Code/User/keybindings.json"
else
  echo "The keybindings.json file does not exist: $KEYBINDINGS_FILE"
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
