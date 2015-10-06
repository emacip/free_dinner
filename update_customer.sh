SERVER_URL="http://localhost:9200"
curl -XDELETE $SERVER_URL/customers/


echo "creating new index customers \n"
curl -XPUT $SERVER_URL/customers/ -d '{
  "mappings": {
    "customer": {
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