index=$(curl -s 'localhost:9200/_cat/indices?v' | grep searchlight | tr -s ' ' | cut -f 3 -d ' ' )
#curl -XGET "localhost:9200/$index/_search?pretty=true&q=*:*" | jq '.'
#curl -XGET "localhost:9200/$index/_search?pretty=true&q=driver:agent_ipmitool" | jq '.'


# Another query:
curl -XGET  "localhost:9200/$index/_search" -d '{
    "query": {
        "bool": {
            "must": [{
                "nested": {
                    "path": "extra",
                    "query": {
                        "query_string": {
                            "fields": ["extra.health"],
                            "query": "WARNN"
                        }
                    }
                }
            }]
        }
    }
}' | jq '.'



