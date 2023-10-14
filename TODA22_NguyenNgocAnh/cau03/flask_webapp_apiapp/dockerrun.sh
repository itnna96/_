SH=$(cd `dirname $BASH_SOURCE` && pwd)
docker build \
  -f ./Dockerfile \
  -t python_i \
  .

docker network create cau03_n

docker run -d -p 20829:3306 -h mysql_c --name my_mysql_c \
\
 -e MYSQL_ROOT_PASSWORD=root \
 -e MYSQL_DATABASE=db \
 -e MYSQL_ROOT_HOST="%" \
\
 -v mysql_v:/var/lib/mysql \
 -v "$SH/mysql/initdb.d/db_seed.sql":/docker-entrypoint-initdb.d/'db_seed.sql' \
\
 --network cau03_n \
mysql

docker run -d -p 8000:8080 -h adminer_c --name my_adminer_c --network cau03_n adminer

docker run -d -p 555:5000 -h apiapp_c --name my_apiapp_c \
\
  -e DB_USER=root \
  -e DB_PASS=root \
  -e DB_HOST=mysql_c \
  -e DB_NAME=db \
\
  --network cau03_n \
python_i

echo
echo


