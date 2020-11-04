# docker_postgreSQL

## 目標

搭建 Docker 版的 PostgreSQL，並且可以 pgAdmin 和 CRUD 數據庫

- [x] 安裝 Docker
- [x] 安裝 the Docker version -> PostgreSQL
- [x] docker 容器外連接 PostgreSQL
- [ ] pgAdmin 或者其他可視化工具

### Upcoming:

連接 PostgreSQL 和 Strapi

## 流程

- [x] 安裝 Docker

  ### 策略:

  1. 創建 Docker account @ Docker hub
  2. 安裝 Docker
  3. 基本操作 (image, container, search...)

  ### 驗證:

  - [x] Ubuntu 上安裝 Docker
  - [x] 基本操作

  ### Upcoming:

  1. 進一步監視，操控 docker

  ### Reference:

  1. [How To Install and Use Docker on Ubuntu 20.04](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04)

- [x] 安裝 the Docker version -> PostgreSQL

- [ ] docker 容器外連接 PostgreSQL

  ### 策略:

  1. docker search 之後，就 pull
  2. docker run
  3. CRUD postgreSQL 裏的數據

  ### 驗證:

  - [x] ```shell
    $ docker search postgres
    $ docker pull postgres
    ```

  - [x] ```shell
    $ docker run -p 5432:5432 -d \
    -e POSTGRES_USER="objectrocket" \
    -e POSTGRES_PASSWORD="1234" \
    -e POSTGRES_DB="some_db" \
    -v ${PWD}/pg-data:/var/lib/postgresql/data \
    --name pg-container \
    postgres # Docker image
    ```

  ### Upcoming:

  1. docker volume
  2. docker-composed

  ### Reference:

  1. [Python and PostgreSQL Docker Container (Part 1)](https://kb.objectrocket.com/postgresql/python-and-postgresql-docker-container-part-1-1062)
  2. [Python and PostgreSQL Docker Container (Part 2)](https://kb.objectrocket.com/postgresql/python-and-postgresql-docker-container-part-2-1063)
  3. [Connecting to Postgresql in a docker container from outside](https://stackoverflow.com/questions/37694987/connecting-to-postgresql-in-a-docker-container-from-outside)
  4. [Connect From Your Local Machine to a PostgreSQL Database in Docker](https://medium.com/better-programming/connect-from-local-machine-to-postgresql-docker-container-f785f00461a7)

  

## References

1. [How to Install Postgres on Docker](https://www.enterprisedb.com/postgres-tutorials/how-install-postgres-docker)
