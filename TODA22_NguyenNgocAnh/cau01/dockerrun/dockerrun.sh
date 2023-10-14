SH=$(cd `dirname $BASH_SOURCE` && pwd)

docker run -p 8800:80 \
           -v $SH/usr/share/nginx/html:/usr/share/nginx/html \
           -d \
           nginx