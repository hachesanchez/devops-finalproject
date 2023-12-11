# Docker Compose Configuration

```yaml
version: '3'
services:
  frontend:
    image: kaputinho/part-2-docker-front:latest
    container_name: front
    ports:
      - "8080:8080"
    depends_on:
      - backend

networks:
  default:
    driver: bridge
