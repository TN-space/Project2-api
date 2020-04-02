curl --include --request POST "http://localhost:4741/destinations" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
      "destination": {
          "name": "'"${NAME}"'",
          "city": "'"${CITY}"'",
          "state": "'"${STATE}"'"
      }
  }'

echo
