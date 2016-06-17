index=$(curl -s 'localhost:9200/_cat/indices?v' | grep searchlight | tr -s ' ' | cut -f 3 -d ' ' )
curl -XGET "localhost:9200/$index/_mapping/OS::Ironic::Node" | jq '.'

