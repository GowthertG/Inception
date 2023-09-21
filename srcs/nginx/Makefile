# Define colors
RESET = \033[0m
BOLD = \033[1m
GREEN = \033[92m
YELLOW = \033[93m

DOCKER_COMMAND = docker
DOCKER_IMAGE_NAME = engin-x-test
DOCKER_CONTAINER_NAME = nginx-container

.PHONY: stopContainers cleanContainers cleanImages build run help

stopContainers:
	@containers=$$($(DOCKER_COMMAND) ps -q); \
	if [ -n "$$containers" ]; then \
	    echo "Stopping all Docker containers..."; \
	    $(DOCKER_COMMAND) stop $$containers; \
	    echo "$(GREEN)All Docker containers stopped.$(RESET)"; \
	else \
	    echo "$(YELLOW)No running Docker containers found.$(RESET)"; \
	fi

cleanContainers:
	@containers=$$($(DOCKER_COMMAND) ps -a -q); \
	if [ -n "$$containers" ]; then \
	    echo "Removing all Docker containers..."; \
	    $(DOCKER_COMMAND) rm $$containers; \
	    echo "$(GREEN)All Docker containers removed.$(RESET)"; \
	else \
	    echo "$(YELLOW)No Docker containers found to remove.$(RESET)"; \
	fi

cleanImages:
	@images=$$($(DOCKER_COMMAND) images -q); \
	if [ -n "$$images" ]; then \
	    echo "Removing all Docker images..."; \
	    $(DOCKER_COMMAND) rmi $$images; \
	    echo "$(GREEN)All Docker images removed.$(RESET)"; \
	else \
	    echo "$(YELLOW)No Docker images found to remove.$(RESET)"; \
	fi

build:
	@echo "Building Docker image ($(DOCKER_IMAGE_NAME))..."
	@$(DOCKER_COMMAND) build -t $(DOCKER_IMAGE_NAME) .
	@echo "$(GREEN)Docker image is built ($(DOCKER_IMAGE_NAME)).$(RESET)"

run:
	@echo "Running Docker container ($(DOCKER_CONTAINER_NAME))..."
	@$(DOCKER_COMMAND) run -d -p 8080:80 --name $(DOCKER_CONTAINER_NAME) $(DOCKER_IMAGE_NAME)
	@echo "$(GREEN)Docker container is running ($(DOCKER_CONTAINER_NAME)).$(RESET)"

fclean: stopContainers cleanContainers cleanImages
	@echo "$(GREEN)Cleanup completed: All containers and images removed.$(RESET)"
re : fclean build run
	@echo "$(GREEN)Rebuild and run completed: Docker container is running.$(RESET)"
help:
	@echo "$(BOLD)Available targets:$(RESET)"
	@echo "  $(YELLOW)stopContainers$(RESET)   : Stop all Docker containers."
	@echo "  $(YELLOW)cleanContainers$(RESET)  : Remove all Docker containers."
	@echo "  $(YELLOW)cleanImages$(RESET)      : Remove all Docker images."
	@echo "  $(YELLOW)build$(RESET)            : Build a Docker image."
	@echo "  $(YELLOW)run$(RESET)              : Run a Docker container."
	@echo "  $(YELLOW)help$(RESET)             : Display this help message."

