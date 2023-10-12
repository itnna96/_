docker-compose up -d
echo

sleep 1
docker-compose logs

echo

http :98 | grep 'works' --color=always

