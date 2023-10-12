SH=`cd $(dirname ${BASH_SOURCE:-$0}) && pwd`
cd $SH

docker run my_helloworld_i
docker build -t my_helloworld_i
docker login
docker push itnna96/my_helloworld_i

