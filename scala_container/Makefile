scala_build:
	# Build the iamage.
	docker build --pull --rm -f "Dockerfile" -t scala_image "."

scala_run: scala_build
	# Run the container
	docker run \
	--name scala_container -it scala_image 