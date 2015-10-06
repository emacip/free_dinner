SERVER_URL="http://localhost:9200"
curl -XDELETE $SERVER_URL/customers/


echo "creating new index branches-development \n"
curl -XPUT $SERVER_URL/customers/ -d '{
  "mappings": {
    "client": {
      "dynamic": false,
      "properties": {
        "name": {
          "type": "string"
        },
        "location": {
          "type": "geo_point"
        }
      }
    }
  }
}'