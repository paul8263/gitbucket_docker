FROM openjdk:8
MAINTAINER paul8263
#RUN apk update && apk add fontconfig && fc-cache --force
COPY gitbucket.war /gitbucket/
COPY run.sh /gitbucket/
VOLUME /data/
ENTRYPOINT ["sh", "/gitbucket/run.sh"]
EXPOSE 8080
