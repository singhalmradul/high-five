#!/bin/bash

echo building and running database
docker pull postgres:15
(
	cd high-five_database
	docker build -t singhalmradul/high-five/postgres:0.0.1-SNAPSHOT .
	docker run -d singhalmradul/high-five/postgres:0.0.1-SNAPSHOT
)

echo setting spring profile to dev
export SPRING_PROFILES_ACTIVE=dev

echo building naming-server
(
	cd high-five_naming-server
	./mvnw spring-boot:build-image -DskipTests
)

echo building gateway
(
	cd high-five_gateway
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

echo unsetting spring profile
unset SPRING_PROFILES_ACTIVE

echo stopping database
docker stop $(docker ps -q --filter ancestor=singhalmradul/high-five/postgres:0.0.1-SNAPSHOT)

echo running high-five backend
docker compose up --build
