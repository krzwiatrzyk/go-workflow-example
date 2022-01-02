GO_VERSION="1.17.5"

install-go:
	wget -nc https://go.dev/dl/go$(GO_VERSION).linux-amd64.tar.gz
	sudo tar -C /usr/local -xzf go$(GO_VERSION).linux-amd64.tar.gz
	rm go$(GO_VERSION).linux-amd64.tar.gz
	echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.zshrc

install-k3d:
	echo "TODO"

build:
	cd container && go build -o tester && mv tester ../ 

test: build
	./tester

git-all:
	git add .; git commit -m "ER ADMIN - aggregative commit"; git push origin master
