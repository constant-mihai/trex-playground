.PHONY: docker-build-trex
docker-build-trex:
	docker build --ssh default -f Dockerfile.trex -t trex .

.PHONY: docker-build-dut
docker-build-dut:
	docker build --ssh default -f Dockerfile.dut -t dut .

.PHONY: up
up:
	docker compose up -d
