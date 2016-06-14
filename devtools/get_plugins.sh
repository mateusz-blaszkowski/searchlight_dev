my_token=$(curl -k -X 'POST' -v http://10.91.97.32:5000/v2.0/tokens -d '{"auth":{"passwordCredentials":{"username": "admin", "password":"password"}, "tenantName":"admin"}}'  -H 'Content-type: application/json'  | jq -r .access.token.id)
curl -H "X-Auth-Token: $my_token" http://localhost:9393/v1/search/plugins | jq '.'

