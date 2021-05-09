docker_build:
	# Build the iamage.
	docker build --pull --rm -f "Dockerfile" -t fastapi_image "."

docker_run: docker_build
	# Run the container the api should be accessibl eon port 
	docker run --rm \
	-p 8000:8000 \
	--mount type=bind,source=$(shell pwd),target=/app \
	--name fastapi_container -it fastapi_image

run_api:
	uvicorn main:app --reload