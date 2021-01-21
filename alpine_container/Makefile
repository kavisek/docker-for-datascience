.Phony: alpine_run

alpine_build:
	# Build the iamage.
	docker build --pull --rm -f "Dockerfile" -t alpine_image "."

alpine_run: alpine_build
	# Run the container
	docker run \
	--name alpine_container \
	-it alpine_image