docker-compose up 

echo

sleep 1
docker-compose logs

echo

http :33288 | grep 'Welcome to nginx!' --color=always

