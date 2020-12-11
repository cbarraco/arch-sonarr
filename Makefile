all: docker-push

.PHONY: docker-build
docker-build:
	docker build -t cbarraco/arch-sonarr:latest .

.PHONY: docker-push
docker-push: docker-build
	docker push cbarraco/arch-sonarr:latest
