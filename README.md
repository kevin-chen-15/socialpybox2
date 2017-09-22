# Docker Compose for Socialpy

Docker Compose is a Docker automation tool for defining, launching, and
managing services. Docker Compose becomes very important if you have multiple
containers working together as an application.  Even in a single container case,
Docker Compose allows you to specify complex Docker command line options in its
YAML configuration file. In this example, I am using my Django [Socialpy](https://github.com/kevin-chen-15/socialpy)
project and Ubuntu 16.04 LTS 64-bit. You can use Docker or Docker Compose

# Instructions

## Install Docker and Docker Compose
+ Install Docker CE
+ Install Docker-Compose

# Steps
+ Make sure Git is installed
+ Make a directory, and cd to this new directory
+ Clone Socialpy app from Github (`git clone https://github.com/kevin-chen-15/socialpy`)
+ Place this Dockerfile and docker-compose.yml file into this directory

## Use Docker Only
+ `docker build -t socialpy .`
+ `docker run -it -p 8000:8000 socialpy`

## Or Use Docker Compose
+ `docker-compose build`
+ `docker-compose up`

