#edited nginx.conf

 root  /usr/share/nginx/html;

#edited Dockerfile 

FROM nginx

COPY . /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/nginx.conf

-------------------------------------------------
#building image and running container

docker build -t basic3-tier-front .
docker run --name front -d -p 8080:8080 basic3-tier-front

-------------------------------------------------
#after uploading to hub.docker

docker pull kaputinho/part-2-docker-front
docker run --name front -d -p 8080:8080 kaputinho/part-2-docker-front
