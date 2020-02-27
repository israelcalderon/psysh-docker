# Psysh docker container
### A clean and ready to use php REPL for code testing

This is only a php testing environment that I've created and uses docker php many libraries (the core is psysh) with the purpose to fastly test php code. I've created this repo for my personal use and expecting this could be useful for other developers in the need of testing php code as fast as possible. As you can read below the only prerequisite will be docker ce


## Prerequisites

- Docker CE 
```shell
$ curl -fsSL https://get.docker.com -o get-docker.sh
$ sudo sh get-docker.sh
```
- Linux OS is not required but I highly recommend it

## Installing
1. Clone this repo in the directory of your preference

```shell
$ git@github.com:israelcalderon/psysh-docker.git
```

2. Build the docker image
```shell
$ cd psysh-docker
$ docker build -t php-psysh -f psysh.dockerfile .
```

3. Create the container and you are ready to go!
```shell
$ docker run -it --name phpshell php-psysh
```

4. Remember that once you exit the Psy Shell session you can re start your container with docker start 
```shell
$ docker start -i phpshell
```

happy coding!