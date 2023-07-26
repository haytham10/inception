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

    You can create a .env file in the srcs/ directory and set your desired environment variables.


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

## Services and Explanations
- **Nginx**: The Nginx service acts as a reverse proxy and web server, handling incoming requests and directing them to the appropriate backend services. It provides SSL/TLS termination and is configured to serve static content efficiently.

- **WordPress**: WordPress is a popular content management system (CMS) for building and managing websites. It is used to create dynamic and customizable websites. The WordPress service is connected to the MariaDB service to store data.

- **MariaDB**: MariaDB is a robust and reliable open-source relational database management system. It serves as the database backend for WordPress, storing all website data and content.

- **Redis**: Redis is an in-memory data structure store, used as a caching layer to improve WordPress performance. It helps reduce the load on the database and speeds up repetitive operations.

- **FTP**: The FTP service allows developers to transfer files between their local machines and the web server. It enables easy file management for the web application.

- **Adminer**: Adminer is a full-featured database management tool that provides a web-based interface to manage the MariaDB database. It offers a convenient way to interact with the database for administration purposes.

- **Custom Website**: A custom website container is provided to test other web applications or static websites. Developers can deploy their custom projects and access them at port 3000.

- **cAdvisor**: cAdvisor (Container Advisor) is an open-source container monitoring tool developed by Google. It collects and exports detailed resource usage and performance statistics for each container running on the host. By using cAdvisor, developers and system administrators can gain insights into container performance, resource utilization, and overall health. The cAdvisor service is configured to expose its metrics via a web interface on port 9443, allowing users to monitor and analyze container metrics in real-time. It complements the monitoring capabilities of other services in the stack, providing valuable information for optimizing containerized applications and ensuring their efficient operation.

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
  │   │   └── cadvisor/
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
