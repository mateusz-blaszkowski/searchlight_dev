index=$(curl -s 'localhost:9200/_cat/indices?v' | grep searchlight | tr -s ' ' | cut -f 3 -d ' ' )
curl -XDELETE "localhost:9200/$index/"

