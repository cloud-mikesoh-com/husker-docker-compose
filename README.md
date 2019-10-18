# mikesoh.com's Docker deployment

This repository holds the `docker-compose.yml` file along with other 
configuration files that will allow me to deploy my site's various
containers.  This docker file deploys the following:

* [`nginx` v1.17.4-alpine](https://hub.docker.com/_/nginx)
* [`phpmyadmin` latest](https://hub.docker.com/r/phpmyadmin/phpmyadmin)
* [`certbot` 0.39.0](https://hub.docker.com/r/certbot/certbot)

# Why Tagged Versions

`nginx` and `certbot` are pinned to specific versions since they are
most likely to fail without properly testing.

# License

All code within this repository, unless specifically stated, is released
via the GPL 3.0 License with "Commons Clause" License Condition 1.0.
