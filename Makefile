DOCKER_REGISTRY = registry.uw.systems/energy/
SERVICE = kafka-offset-exporter

.PHONY: $(SERVICE)
$(SERVICE):
	GOOS=linux GOARCH=amd64 go build .
	docker build -t $(DOCKER_REGISTRY)$(SERVICE):latest .

build-ci:
	docker push $(DOCKER_REGISTRY)$(SERVICE):latest
