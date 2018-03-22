VERSION=latest
NAME=jenkins-job
DOCKERFILE=Dockerfile

all: build sunet
build:
	docker build -f $(DOCKERFILE) --no-cache=false -t $(NAME):$(VERSION) .
sunet:
	docker tag $(NAME):$(VERSION) docker.sunet.se/$(NAME):$(VERSION)
	docker push docker.sunet.se/$(NAME):$(VERSION)
