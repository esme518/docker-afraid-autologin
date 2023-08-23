:whale: Dockerfiles for [afraid-autologin](https://github.com/inderpreet99/afraid-autologin)

forked from [reverie89/docker-afraid-autologin-x86_64](https://github.com/reverie89/docker-afraid-autologin-x86_64)

**docker-compose.yml**
```
version: "2.3"
services:
  app:
    image: esme518/docker-afraid-autologin
    network_mode: "bridge"
    container_name: afraid-autologin
    environment:
      - USERNAME=you_username
      - PASSWORD=you_password
    volumes:
      - ./log:/log
```
**Run the following command:**
```
docker compose run --rm app
```
