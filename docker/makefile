install:
	sudo apt install build-essential
	@echo "Installing initial dependencies..."
	sudo apt update && sudo apt install -y make ca-certificates curl
	sudo snap install docker

	@echo "Adding Docker GPG key and repository..."
	sudo install -m 0755 -d /etc/apt/keyrings
	sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
	sudo chmod a+r /etc/apt/keyrings/docker.asc
	@echo \
		"deb [arch=$$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
		$$(. /etc/os-release && echo \"$$VERSION_CODENAME\") stable" | \
		sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
	sudo apt-get update
	sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
	sudo docker run hello-world

	@echo "Setting Docker permissions..."
	sudo groupadd docker || true
	sudo usermod -aG docker $$USER
	newgrp docker
	docker run hello-world
