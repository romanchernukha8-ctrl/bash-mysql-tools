#!/bin/bash

# Load environment variables

# Load .env file
source .env


# Function: check user in DB

check_user() {
  local login="$1"
  local password="$2"

  # Execute SQL query
  RESULT=$(mysql -h "$DB_HOST" -u"$DB_USER" -p"$DB_PASS" "$DB_NAME" -N -s -e \
  "SELECT id FROM users WHERE login='$login' AND password='$password' LIMIT 1;" 2>/dev/null)

  # Check result
  if [[ -n "$RESULT" ]]; then
      echo "Authorized"
  else
      echo "Not authorized"
  fi
}

# Main logic

# Read user input
read -p "Enter login: " LOGIN
read -s -p "Enter password: " PASSWORD
echo

# Call function
check_user "$LOGIN" "$PASSWORD"
