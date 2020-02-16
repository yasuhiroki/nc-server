#!/bin/sh

hostname > response.txt
while : ;
do
  (echo -ne "HTTP/1.0 200 Ok\nContent-Length: $(wc -c < response.txt)\n\n"; cat response.txt) | nc -l -p 80
done
