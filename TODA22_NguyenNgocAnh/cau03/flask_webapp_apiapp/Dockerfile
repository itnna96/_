FROM python:3.8

WORKDIR /app

COPY . /app/

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y dos2unix
RUN chmod +x ./flask_apiapp/script/install_package.sh ./flask_apiapp/script/require_envvar.sh ./flask_apiapp/script/start.sh ./flask_apiapp/script/data/add.sh
RUN dos2unix ./flask_apiapp/script/install_package.sh ./flask_apiapp/script/require_envvar.sh ./flask_apiapp/script/start.sh ./flask_apiapp/script/data/add.sh




EXPOSE 5000

CMD  ./flask_apiapp/script/install_package.sh ; ./flask_apiapp/script/require_envvar.sh ; ./flask_apiapp/script/start.sh 

