RESET = \033[0m
BOLD = \033[1m
RED = \033[31m
GREEN = \033[32m

ifeq ($(LOG),)
	L = @
else
	L = 
endif

build: 
	$(L)echo "$(BOLD)$(GREEN)Building Docker image...$(RESET)"
	$(L)docker build -t 007-greeting-algorith-app .

up:	
	$(L)echo "$(BOLD)$(GREEN)Running Docker container...$(RESET)"
	$(L)if docker ps -a --format '{{.Names}}' | grep -q '^007-greeting-algorith-app$$'; then \
		docker start 007-greeting-algorith-app; \
	else \
		docker run -d --name 007-greeting-algorith-app 007-greeting-algorith-app $(ARGS); \
	fi
	$(L)docker attach 007-greeting-algorith-app

down: 
	$(L)echo "$(BOLD)$(RED)Bringing down Docker containers...$(RESET)"
	$(L)docker stop 007-greeting-algorith-app

clean:
	$(L)echo "$(BOLD)$(RED)Removing Docker container and image...$(RESET)"
	$(L)docker stop 007-greeting-algorith-app || true
	$(L)docker rm 007-greeting-algorith-app || true
	$(L)docker rmi 007-greeting-algorith-app || true

run: build up down clean
