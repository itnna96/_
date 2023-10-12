SH=`cd $(dirname ${BASH_SOURCE:-$0}) &&pwd`
# Xac dinh duong dan cua tep
# ref https://docs.docker.com/storage/volumes/#back-up-restore-or-migrate-data-volumes


docker run \
  --volumes-from 'mysql_c' \
  -v $SH:'/backup' \
  ubuntu \
  tar cvf '/backup'/backup.tar '/var/lib/mysql'
