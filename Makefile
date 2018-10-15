IMAGE = fstehle/rpi-node:$(VERSION)

.PHONY: build
build: guard-VERSION
	docker build -t $(IMAGE) -f $(VERSION)/Dockerfile .

.PHONY: docker-push
docker-push: guard-VERSION
	docker push $(IMAGE)

.PHONY: guard-%
guard-%:
	$(if $(value ${*}),,$(error "Variable ${*} not set!"))