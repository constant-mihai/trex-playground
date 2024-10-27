.PHONY: docker-build-trex
docker-build-trex:
	docker build --ssh default -f Dockerfile.trex -t trex .

.PHONY: docker-build-dut
docker-build-dut:
	docker build --ssh default -f Dockerfile.dut -t dut .

.PHONY: docker-build-ggsn
docker-build-dut:
	docker build --ssh default -f Dockerfile.ggsn -t ggsn .

.PHONY: up
up:
	docker compose up -d
