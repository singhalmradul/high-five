#!/bin/bash

echo building database
docker pull postgres:15
(
	cd high-five_database
	docker build -t singhalmradul/high-five/postgres:0.0.1-SNAPSHOT .
)

echo building naming-server
(
	cd high-five_naming-server
	./mvnw spring-boot:build-image
)

echo building gateway
(
	cd high-five_gateway
	./mvnw spring-boot:build-image
)

echo building posts-service
(
	cd high-five_posts-service
	./mvnw spring-boot:build-image -DskipTests=true
)

echo running high-five
docker compose up --build
