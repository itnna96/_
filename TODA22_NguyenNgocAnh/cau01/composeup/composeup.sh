docker-compose up -d

sleep 3

echo

sleep 3
http :8700 | grep 'Cau' --color=always