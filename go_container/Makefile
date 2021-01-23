


go_build:
	# Build the iamage.
	docker build --pull --rm -f "Dockerfile" -t go_image "."

go_run: go_build
	# Run the container
	docker run \
	--name go_container -it go_image 
	