set -x

sleep 10

curl -XPUT -H "content-type: application/json" \
    -d '{"path":"/opt/docker/models/mleap.zip"}' \
    http://localhost:65327/model
