
-------------------------------------------------
#after uploading to hub.docker

/////////////////////
docker pull kaputinho/basic3tier-front
docker run --name front --network full-app -d -p 80:8080 kaputinho/basic3tier-front:front


/////////////////////
PARA EL .NET
docker pull kaputinho/basic3tier-back
docker run --name back --network full-app -d -p 8000:80 kaputinho/basic3tier-back:back


/////////////////////
docker run --name postgres -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=admin123 -e POSTGRES_DB=basic3tier -v frijoles-volume:/var/lib/postgresql/data -p 5432:5432 -d postgres:latest
