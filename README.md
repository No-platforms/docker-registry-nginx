# docker-registry-nginx
Nginx + Private docker registry

This Docker Compose file sets up two services: a Docker registry and an Nginx reverse proxy14. The registry service uses the official Docker registry image and is configured with basic authentication using an htpasswd file7. The Nginx service acts as a reverse proxy, handling SSL termination and forwarding requests to the registry5.



Generate an htpasswd file for authentication:

```bash
docker run --entrypoint htpasswd registry:2 -Bbn username password > auth/htpasswd
```

Or install localy htpasswd on ubuntu:

```bash
sudo apt install apache2-utils
```

Then create your password:

```bash
htpasswd -Bbn [username] [password] > auth/htpasswd
```

Configure Nginx by creating an nginx.conf file with appropriate SSL and proxy settings9.

Obtain SSL certificates and place them in the certs directory.

Start the services with:

```bash
docker-compose up -d
```
Remember to adjust the configuration according to your specific needs, such as domain names and SSL certificate paths.