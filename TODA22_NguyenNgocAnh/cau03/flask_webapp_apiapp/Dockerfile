FROM python:3.8

WORKDIR /app

COPY . /app/
# COPY . /app/

# COPY ./flask_apiapp/script/install_package.sh /install_package.sh
# COPY ./flask_apiapp/script/require_envvar.sh /require_envvar.sh
# COPY ./flask_apiapp/script/start.sh /start.sh
# COPY ./flask_apiapp/script/stop.sh /stop.sh

RUN chmod +x ./flask_apiapp/script/install_package.sh ./flask_apiapp/script/require_envvar.sh ./flask_apiapp/script/start.sh ./flask_apiapp/script/stop.sh ./flask_apiapp/script/data/clear.sh



# RUN python3 -m pip install --upgrade pip
# RUN python3 -m pip install --upgrade virtualenv

# RUN rm -rf                .venv/
# RUN python3 -m virtualenv .venv/

# RUN ./.venv/bin/pip install -r requirements.txt
# RUN ./.venv/bin/pip freeze
# RUN apt-get update && apt-get install -y curl

EXPOSE 5000

CMD tail -f && /bin/sh -c "./flask_apiapp/script/install_package && ./flask_apiapp/script/require_envvar.sh && ./flask_apiapp/script/start.sh && ./flask_apiapp/script/stop.sh && ./flask_apiapp/script/data/clear.sh"
#CMD  ./.venv/bin/python ./flask_apiapp/app.py