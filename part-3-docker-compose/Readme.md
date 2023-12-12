# Docker Compose Configuration

```yaml
version: '3'
services:
  frontend:
    build:
      context: ./Basic3Tier.UI/Dockerfile
      dockerfile: Dockerfile
    container_name: front
    ports:
      - "80:8080"
    networks:
      - full-app
    depends_on:
      - backend

  backend:
    build:
      context: ./Basic3Tier.API/Dockerfile
      dockerfile: Dockerfile
    container_name: back
    ports:
      - "8000:80"
    networks:
      - full-app
    depends_on:
      - database

  database:
    image: postgres:latest
    container_name: postgres
    environment:
      POSTGRES_USER: postgres
      POSTGRES_PASSWORD: admin123
      POSTGRES_DB: basic3tier
    volumes:
      - frijoles-volume:/var/lib/postgresql/data
    networks:
      - full-app
    ports:
      - "5432:5432"

networks:
  full-app:
    driver: bridge

volumes:
  frijoles-volume:
