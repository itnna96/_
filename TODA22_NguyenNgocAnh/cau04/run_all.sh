SH=$(cd `dirname $BASH_SOURCE` && pwd)

cd $SH/../cau03/flask_webapp_apiapp/
./composeup.sh

cd $SH/../cau01/dockerrun/
./dockerrun.sh

