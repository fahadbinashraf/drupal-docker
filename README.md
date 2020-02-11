# Drupal Docker

A drupal setup with docker-compose

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

First, start the docker containers
```
docker-compose up
```
Then, start a bash session in the web_drupal_demo container

```
docker exec -it web_drupal_demo bash
```

Go to the project directory

```bash
cd /var/www/project/
```

and then install modules with composer

```bash
composer install
```

### Create database

Before you start installing drupal, you need to create a new database called "drupal" in the mysql server

You can change this in the /web/sites/default/setting.php file

### Installing Drupal

The next step is to open the url http://docker-demo.fas-dev.vircon.net/ you can change this in the docker/conf/00-default.conf file

You should be able to see drupal installation page

Everything from this point should be straight forward

### Troubleshooting

If after installation you have some issues, for instance if the website doesn't work, you might need to see this [link](https://github.com/hechoendrupal/drupal-console/issues/1759)
