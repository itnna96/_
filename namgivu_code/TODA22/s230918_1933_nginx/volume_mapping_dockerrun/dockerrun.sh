#c=nginx_volume_mapping_dockerrun
#docker rm -f $c
docker run \
    -p 33388:80 \
    -d \
    -v ./:/usr/share/nginx/html \
    --name nginx_volume_mapping_dockerrun \
    nginx

echo

sleep 1

echo

http :33388 | grep 'nginx' --color=always
