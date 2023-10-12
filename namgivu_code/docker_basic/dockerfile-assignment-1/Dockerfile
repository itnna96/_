FROM node

WORKDIR /app

#CMD 'mkdir /test' 
RUN echo "WORKDIR at `pwd`"
#RUN echo "list at `ls`"
#CMD ls 
#COPY . /app
#The folder from local to the folder container

EXPOSE 3000

CMD echo 'Running nodejs app at port 3000' ;\
    npm i ; npm run start ;\
    echo
