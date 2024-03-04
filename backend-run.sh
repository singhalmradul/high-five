#!/bin/bash

echo building postgres
docker pull postgres:15
(
	cd high-five_database/
	docker build -t singhalmradul/high-five/postgres:0.1.0 .
)

echo building service-registry
(
	cd high-five_service-registry
	./mvnw spring-boot:build-image -DskipTests
)

echo building authorization-server
(
	cd high-five_authorization-server
	./mvnw spring-boot:build-image -DskipTests
)


echo building reverse-proxy
(
	cd high-reverse-proxy
	./mvnw spring-boot:build-image -DskipTests
)

echo building post-service
(
	cd high-five_post-service
	./mvnw spring-boot:build-image -DskipTests
)

echo building user-service
(
	cd high-five_user-service
	./mvnw spring-boot:build-image -DskipTests
)

echo stopping database
docker stop $(docker ps -q --filter ancestor=singhalmradul/high-five/postgres:0.1.0)

echo running high-five backend
docker compose up --build
