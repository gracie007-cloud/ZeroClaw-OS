#!/bin/bash
# Rebranding script for ZeroClaw
# Run this to transform ZeroClaw into ZeroClaw

OLD_NAME="ZeroClaw"
NEW_NAME="ZeroClaw"
OLD_NAME_LOWER="zeroclaw"
NEW_NAME_LOWER="nuvho-zeroclaw"

echo "Rebranding $OLD_NAME to $NEW_NAME..."

# Replace in Python files
find . -name "*.py" -type f -exec sed -i "s/$OLD_NAME/$NEW_NAME/g" {} \;
find . -name "*.py" -type f -exec sed -i "s/$OLD_NAME_LOWER/$NEW_NAME_LOWER/g" {} \;

# Replace in HTML files
find . -name "*.html" -type f -exec sed -i "s/$OLD_NAME/$NEW_NAME/g" {} \;

# Replace in JavaScript files  
find . -name "*.js" -type f -exec sed -i "s/$OLD_NAME/$NEW_NAME/g" {} \;

# Replace in CSS files
find . -name "*.css" -type f -exec sed -i "s/$OLD_NAME/$NEW_NAME/g" {} \;

# Replace in markdown files
find . -name "*.md" -type f -exec sed -i "s/$OLD_NAME/$NEW_NAME/g" {} \;

# Replace in shell scripts
find . -name "*.sh" -type f -exec sed -i "s/$OLD_NAME/$NEW_NAME/g" {} \;

# Replace in docker files
find . -name "Dockerfile*" -type f -exec sed -i "s/$OLD_NAME/$NEW_NAME/g" {} \;

# Replace favicon (would need custom assets)
# cp custom-favicon.svg webui/public/favicon.svg
# cp custom-icon.svg webui/public/icon.svg

echo "Done! Rebranded to $NEW_NAME"
