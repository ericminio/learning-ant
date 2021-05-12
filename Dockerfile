FROM alpine:3.9.5

RUN apk update && apk add \
    bash \
    curl \
    openjdk8 \
    apache-ant

RUN echo "PS1='\n\[\e[32m\]\u \[\e[33m\]in \w\[\e[0m\] \n> '" >> ~/.bashrc
WORKDIR /usr/local/src

ENTRYPOINT [ "/usr/local/src/start.sh" ]