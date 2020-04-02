curl --include --request PATCH "http://localhost:4741/destinations/${ID}" \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
      "destination": {
        "name": "'"${NAME}"'",
        "city": "'"${CITY}"'",
        "state": "'"${STATE}"'"
      }
  }'

echo
