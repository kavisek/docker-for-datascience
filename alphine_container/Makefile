.Phony: alphine_run

alphine_build:
	# Build the iamage.
	docker build --pull --rm -f "Dockerfile" -t alphine_image "."

alphine_run: alphine_build
	# Run the container
	docker run \
	--name alphine_contianer \
	-it alphine_image
	