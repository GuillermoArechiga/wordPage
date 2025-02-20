# WordPress

Build a WordPress project using Docker

## Instructions

Follow the steps below to set up and run your WordPress project using Docker Compose.

### Prerequisites
Ensure you have the following installed:
- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

### Setup & Run WordPress

1. Clone this repository:
   ```sh
   git clone <[repo-url](https://github.com/GuillermoArechiga/wordPressDocker)>
   cd <wordPressDocker>
   ```

2. Create a `.env` file to store environment variables:
   ```sh
   touch .env
   ```
   Add necessary environment variables such as database credentials inside the `.env` file.

3. Start the WordPress container:
   ```sh
   docker compose up -d
   ```

4. Access WordPress:
   - Open your browser and go to `http://localhost:8080`
   - Follow the setup instructions to configure your WordPress site

### Stopping the Containers
To stop the running containers, use:
```sh
docker compose down
```

### Managing Data
- WordPress and database data persist in Docker volumes.
- To remove volumes (and erase data), run:
  ```sh
  docker compose down -v
  ```

### Customization
- Modify the `docker-compose.yml` file to change database credentials, ports, or other settings.

### Troubleshooting
- Check container logs for errors:
  ```sh
  docker compose logs -f
  ```
- Ensure ports 8080 and 3306 are available.

---

Now you’re ready to build and run your WordPress project with Docker! 🚀

