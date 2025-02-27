# docker-registry-nginx
Nginx + Private Docker Registry

This Docker Compose file sets up two services: a Docker registry and an Nginx reverse proxy. The registry service uses the official Docker registry image and is configured with basic authentication using htpasswd. The Nginx service acts as a reverse proxy, handling SSL termination and forwarding requests to the registry.

## Usage

### Step 1:
Generate an `htpasswd` file for authentication:

```bash
docker run --entrypoint htpasswd registry:2 -Bbn username password > auth/htpasswd
```

Or install locally if on Ubuntu:

```bash
sudo apt install apache2-utils
```

Then create your password:

```bash
htpasswd -Bbn [username] [password] > auth/htpasswd
```
**Note:** Replace `[username]` and `[password]` with your custom username and password.

### Step 2:
Clone the `.env.example` file as `.env` and configure environment variables.

### Step 3:
Clone `nginx.conf` as `nginx-custom.conf` and set domain-specific configurations.

### Step 4:
Start the services with:

```bash
docker-compose up -d
```

**Note:** Adjust all configuration settings, such as domain names, proxy rules, and other parameters according to your specific needs.