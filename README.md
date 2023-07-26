# Inception
Welcome to Inception! This project aims to provide a complete and customizable Docker-based environment for setting up a WordPress website with Nginx, MariaDB, Redis, FTP server, Adminer, and more.

## Getting Started:
To get started with Inception, follow these steps:
1. Clone the repository to your local machine:
   
    `
    git clone https://github.com/haytham10/inception.git
    `
2. Navigate to the project directory:

    `
    cd inception
    `

3. Configure Environment Variables:

    Create a .env file in the srcs/ directory and set your desired environment variables.


4. Start the Environment:

    Use the following commands to start the environment:

     `
     make all
     `
## Available Commands:

The "Inception" project comes with a Makefile that provides various commands to manage the Docker environment. Here are the available commands:

- **make all**: Start the entire "Inception" environment.
- **make build**: Build Docker images and start the environment.
- **make start**: Start the "Inception" environment without rebuilding.
- **make stop**: Stop the "Inception" environment.
- **make down**: Shut down the "Inception" environment and remove containers.
- **make re**: Rebuild the "Inception" environment.
- **make clean**: Clean up the "Inception" environment and delete unused Docker resources.
- **make fclean**: Perform a total cleaning, stopping all containers and removing all Docker resources.

## Project Structure:
The "Inception" project has the following directory structure:

```
inception/
  ├── srcs/
  │   ├── docker-compose.yml
  │   ├── .env
  │   ├── nginx/
  │   │   └── ... (Nginx configuration files)
  │   ├── mariadb/
  │   │   └── ... (MariaDB configuration files)
  │   ├── wordpress/
  │   │   └── ... (WordPress configuration files)
  │   ├── bonus/
  │   │   ├── redis/
  │   │   ├── ftp/
  │   │   ├── adminer/
  │   │   ├── website/
  │   │   └── portainer/
  │   └── requirements/
  │       ├── tools/
  │       │   ├── script.sh
  │       │   └── ...
  │       ├── ...
  │       └── ...
  ├── .gitignore
  ├── Makefile
  └── README.md
```

## Customization:
The "Inception" project allows for easy customization by modifying the relevant configuration files and environment variables.
You can adjust Nginx, MariaDB, and other services' configurations as needed. Refer to the specific service directories for more details.

## Contribution:
I welcome contributions to the project! If you find any issues or have suggestions for improvements, feel free to open an issue or submit a pull request.

## License:
The "Inception" project is open-source and available under the MIT License.

#
I hope you find the "Inception" project helpful for setting up your WordPress website with ease. If you have any questions or need further assistance, please don't hesitate to reach out. Happy coding! 😄🚀
