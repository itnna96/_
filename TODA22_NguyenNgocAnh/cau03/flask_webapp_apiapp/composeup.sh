SH=`cd $(dirname ${BASH_SOURCE:-$0}) && pwd`
cd $SH

echo

#context="$SH/flask_apiapp" \
#dockerfile="$SH/Dockerfile" \
docker-compose up --build -d


