FROM nginx

COPY . /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/nginx.conf

ENV API_BACK_URL=http://20.199.89.0:8000/

 docker exec -it e4e4cc5f3f94 sed -i 's/"API_URL": "http:\/\/localhost:8000\/"/"API_URL": "http:\/\/20.199.89.0:8000\/"/' /usr/share/nginx/html/configs/config.json