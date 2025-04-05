GO_VERSION := 1.22.10
GO_ARCHIVE := go$(GO_VERSION).linux-amd64.tar.gz
DOWNLOAD_URL := https://golang.org/dl/$(GO_ARCHIVE)

install:
	@echo "Installing Golang $(GO_VERSION)..."
	mkdir -p ~/download && cd ~/download && \
	curl -OL $(DOWNLOAD_URL) && \
	sudo tar -C /usr/local -xvf $(GO_ARCHIVE)
	echo 'export PATH=$$PATH:/usr/local/go/bin' >> ~/.profile
	source ~/.profile
	go version
