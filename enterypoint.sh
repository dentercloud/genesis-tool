#!/bin/bash
cd /genesis-tool/
# Check for and load new variables or configuration files before starting the main application
if [ -f ./config.json ]; then
  source ./config.json
fi

# Check for and load new variables from environment variables
if [ -n "$NEW_VARIABLE" ]; then
  export MY_VARIABLE="$NEW_VARIABLE"
fi

# Start the main application
exec  npm start
