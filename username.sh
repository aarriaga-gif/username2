#!/bin/bash
# username.sh
# Anthony Arriaga
# CPSC 298
INPUT_FILE=${1:-username-input}

if [[ ! -f "$INPUT_FILE" ]]; then
  echo "Error: file '$INPUT_FILE' not found."
  exit 1
fi

echo "Username rules:"
echo " - Only lowercase letters, digits, and underscores are allowed."
echo " - Must start with a lowercase letter."
echo " - Must be between 3 and 12 characters long."
echo

while read -r USERNAME; do
  if echo "$USERNAME" | grep -Eq "^[a-z][a-z0-9_]{2,11}$"; then
    echo "$USERNAME → Valid username"
  else
    echo "$USERNAME → Invalid username"
  fi
done < "$INPUT_FILE"