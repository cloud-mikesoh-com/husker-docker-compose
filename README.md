# mikesoh.com's Docker deployment

This repository holds the `docker-compose.yml` file along with other 
configuration files that will allow me to deploy my site's various
containers.  This docker file deploys the following:

* [`nginx` v1.29-alpine](https://hub.docker.com/_/nginx)
* [`homepage` v1.4](https://ghcr.io/gethomepage/homepage)
* [`phpmyadmin` latest](https://hub.docker.com/r/phpmyadmin/phpmyadmin)
* [`certbot` v5.0.0](https://hub.docker.com/r/certbot/certbot)
* [`roundcube` 1.5.3](https://hub.docker.com/r/roundcube/roundcubemail)

# Why Tagged Versions

`nginx` is pinned to a specific version since it is most likely to fail without properly testing.

`roundcube` is pinned to 1.5.3 due to [issues with roundcube-1.6](https://github.com/roundcube/roundcubemail-docker/issues/186).

`certbot` and `homepage` are pinned just to be safe.

# Attributions

I used Philipp's medium article ["Nginx and Let’s Encrypt with Docker in
Less Than 5 Minutes](https://medium.com/@pentacent/nginx-and-lets-encrypt-with-docker-in-less-than-5-minutes-b4b8a60d3a71).
His github repository has the [`init-letsencrypt.sh`](https://github.com/wmnnd/nginx-certbot/blob/master/init-letsencrypt.sh) 
script, which is used here under the MIT License.

# License

All code within this repository, unless specifically stated, is released
via the GPL 3.0 License with "Commons Clause" License Condition 1.0.
