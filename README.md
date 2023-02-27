# Project-20
<<<<<<< HEAD
MIGRATION TO THE СLOUD WITH CONTAINERIZATION. PART 1 – DOCKER & DOCKER COMPOSE

The YAML file has declarative fields, and it is vital to understand what they are used for.

version: Is used to specify the version of Docker Compose API that the Docker Compose engine will connect to. This field is optional from docker compose version v1.27.0. You can verify your installed version with:
docker-compose --version
docker-compose version 1.28.5, build c4eb3a1f
service: A service definition contains a configuration that is applied to each container started for that service. In the snippet above, the only service listed there is tooling_frontend. So, every other field under the tooling_frontend service will execute some commands that relate only to that service. Therefore, all the below-listed fields relate to the tooling_frontend service.
build
port
volumes
links
You can visit the site here to find all the fields and read about each one that currently matters to you -> https://www.balena.io/docs/reference/supervisor/docker-compose/

You may also go directly to the official documentation site to read about each field here -> https://docs.docker.com/compose/compose-file/compose-file-v3/
=======
MIGRATION TO THE СLOUD WITH CONTAINERIZATION. PART 1 – DOCKER and DOCKER COMPOSE
>>>>>>> f8099668c6c58102477ba77d0c360c7469c83c78
