#edited nginx.conf

 root  /usr/share/nginx/html;

#edited Dockerfile 

FROM nginx

COPY . /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/nginx.conf

-------------------------------------------------
#building image and running container

docker build -t basic3-tier-front .
docker run --name front --network full-app -d -p 8080:8080 basic3-tier-front

-------------------------------------------------
#after uploading to hub.docker

docker pull kaputinho/part-2-docker-front
docker run --name front -d -p 8080:8080 kaputinho/part-2-docker-front

/////////////////////
PARA EL FRONT
docker build -t basic3-tier-front .
docker run --name front --network full-app -d -p 8080:8080 basic3-tier-front

/////////////////////
PARA EL .NET
docker build -t basic3-tier-back .
docker run -d --name back  --network full-app -p 8000:80 basic3-tier-back


/////////////////////
PARA EL POSTGRES 
docker run --name postgres -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=admin123 -e POSTGRES_DB=basic3tier -v frijoles-volume:/var/lib/postgresql/data --network full-app -p 5432:5432 -d postgres:latest
