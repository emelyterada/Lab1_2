FROM ubuntu
RUN apt-get update
COPY ./CheckReplication.sh .
RUN chmod +x ./CheckReplication.sh
RUN apt-get update && apt-get install -y mysql-client && rm -rf /var/lib/apt
RUN mkdir output &&cd /output && touch file.txt && cd .. 
EXPOSE 3001
CMD while true; do *  *  *  *  * sleep 15; ./CheckReplication.sh; done
