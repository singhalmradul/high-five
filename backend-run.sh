#!/bin/bash

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
	cd high-five_reverse-proxy
	./mvnw spring-boot:build-image -DskipTests
)

echo building post-service
(
	cd high-five_post-service
	./mvnw spring-boot:build-image -DskipTests
)

echo building like-service
(
	cd high-five_like-service
	./mvnw spring-boot:build-image -DskipTests
)

echo building user-service
(
	cd high-five_user-service
	./mvnw spring-boot:build-image -DskipTests
)

echo running high-five backend
docker compose --compatibility up --build
