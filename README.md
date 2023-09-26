# Inception Project

## Table of Contents

- **About**
- **Prerequisites**
- **Getting Started**
- **Usage**
- **Project Structure**
- **Built With**
- **Contributing**
- **License**
- **Acknowledgments**

## About

This repository contains the Inception project, which is part of the common core curriculum. The project focuses on system administration using Docker and involves setting up a small infrastructure with various services.

## Prerequisites

Before you begin, ensure you have met the following requirements:
- You need access to a virtual machine.
- Basic knowledge of Docker is recommended.
- Familiarity with Docker Compose is a plus.

## Getting Started

To get started with the project, follow these steps:

1. Clone this repository to your local machine.
2. Set up a virtual machine environment.
3. Review the project guidelines and requirements in the documentation.

## Usage

The project involves creating and configuring Docker containers for services such as NGINX, WordPress, and MariaDB. The `docker-compose.yml` file and Makefile provided in the `srcs` folder will help you set up the infrastructure. Please refer to the documentation for detailed usage instructions.

## Project Structure

The project directory structure is organized as follows:
```bash
/
├── srcs/
│ ├── requirements/
│ │ ├── mariadb/
│ │ ├── nginx/
│ │ ├── ...
│ ├── docker-compose.yml
│ ├── .env
├── Makefile
├── ...
```


- `srcs/`: Contains configuration files and Docker-related code.
- `Makefile`: Used to automate project setup.
- `docker-compose.yml`: Configuration for Docker services.
- `.env`: Environment variable configuration.

## Built With

This project is built with the following technologies and tools:
- Docker
- Docker Compose

## Contributing

Contributions to this project are welcome! To contribute, follow these steps:
1. Fork the project.
2. Create a new branch for your feature or bug fix.
3. Make your changes and commit them.
4. Submit a pull request with a clear description of your changes.
