FROM debian:buster

RUN apt update && apt install -y netcat stress-ng

WORKDIR /opt
COPY entrypoint.sh /opt/entrypoint.sh

EXPOSE 80

CMD ["bash", "/opt/entrypoint.sh"]

