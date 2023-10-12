docker build -t cau02_i .
docker login
docker image tag cau02_i itnna96/cau02_i
docker image push itnna96/cau02_i