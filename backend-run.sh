#!/bin/bash

echo '\033[1;31m ------------------------------------------------------ \033[1;95m service-registry \033[1;31m ------------------------------------------------------ \033[0m'
(
	cd high-five_service-registry
	./mvnw clean
	./mvnw spring-boot:build-image -DskipTests
)

echo '\033[1;31m ------------------------------------------------------ \033[1;95m authorisation-server \033[1;31m ------------------------------------------------------ \033[0m'
(
	cd high-five_authorisation-server
	./mvnw clean
	./mvnw spring-boot:build-image -DskipTests
)

echo '\033[1;31m ------------------------------------------------------ \033[1;95m reverse-proxy \033[1;31m ------------------------------------------------------ \033[0m'
(
	cd high-five_reverse-proxy
	./mvnw clean
	./mvnw spring-boot:build-image -DskipTests
)

echo '\033[1;31m ------------------------------------------------------ \033[1;95m follow-service \033[1;31m ------------------------------------------------------ \033[0m'

(
	cd high-five_follow-service
	./mvnw clean
	./mvnw spring-boot:build-image -DskipTests
)

echo '\033[1;31m ------------------------------------------------------ \033[1;95m post-service \033[1;31m ------------------------------------------------------ \033[0m'
(
	cd high-five_post-service
	./mvnw clean
	./mvnw spring-boot:build-image -DskipTests
)

echo '\033[1;31m ------------------------------------------------------ \033[1;95m comment-service \033[1;31m ------------------------------------------------------ \033[0m'
(
	cd high-five_comment-service
	./mvnw clean
	./mvnw spring-boot:build-image -DskipTests
)

echo '\033[1;31m ------------------------------------------------------ \033[1;95m like-service \033[1;31m ------------------------------------------------------ \033[0m'
(
	cd high-five_like-service
	./mvnw clean
	./mvnw spring-boot:build-image -DskipTests
)

echo '\033[1;31m ------------------------------------------------------ \033[1;95m user-service \033[1;31m ------------------------------------------------------ \033[0m'
(
	cd high-five_user-service
	./mvnw clean
	./mvnw spring-boot:build-image -DskipTests
)

echo running high-five backend
docker compose --compatibility up --build
