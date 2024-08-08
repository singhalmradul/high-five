#!/bin/bash

echo '\033[1;31m ------------------------------------------------------ \033[1;95m service-registry \033[1;31m ------------------------------------------------------ \033[0m'
(
	cd high-five_service-registry
	./mvnw -DskipTests clean spring-boot:build-image
)

echo '\033[1;31m ------------------------------------------------------ \033[1;95m authorisation-server \033[1;31m ------------------------------------------------------ \033[0m'
(
	cd high-five_authorisation-server
	./mvnw -DskipTests clean spring-boot:build-image

)

echo '\033[1;31m ------------------------------------------------------ \033[1;95m api-gateway \033[1;31m ------------------------------------------------------ \033[0m'
(
	cd high-five_api-gateway
	./mvnw -DskipTests clean spring-boot:build-image

)

echo '\033[1;31m ------------------------------------------------------ \033[1;95m follow-service \033[1;31m ------------------------------------------------------ \033[0m'

(
	cd high-five_follow-service
	./mvnw -DskipTests clean spring-boot:build-image

)

echo '\033[1;31m ------------------------------------------------------ \033[1;95m post-service \033[1;31m ------------------------------------------------------ \033[0m'
(
	cd high-five_post-service
	./mvnw -DskipTests clean spring-boot:build-image

)

echo '\033[1;31m ------------------------------------------------------ \033[1;95m comment-service \033[1;31m ------------------------------------------------------ \033[0m'
(
	cd high-five_comment-service
	./mvnw -DskipTests clean spring-boot:build-image

)

echo '\033[1;31m ------------------------------------------------------ \033[1;95m like-service \033[1;31m ------------------------------------------------------ \033[0m'
(
	cd high-five_like-service
	./mvnw -DskipTests clean spring-boot:build-image

)

echo '\033[1;31m ------------------------------------------------------ \033[1;95m user-service \033[1;31m ------------------------------------------------------ \033[0m'
(
	cd high-five_user-service
	./mvnw -DskipTests clean spring-boot:build-image

)

echo running high-five backend
docker compose --compatibility up --build
