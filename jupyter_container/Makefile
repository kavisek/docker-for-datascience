
jupyter_build:
	# Build the iamage.
	docker build --pull --rm -f "Dockerfile" -t jupyter_image "."

jupyter_run: jupyter_build
	# Run the container
	docker run \
	-p 8888:8888 \
	--mount type=bind,source=$(shell pwd),target=/app \
	--name jupyter_container -it jupyter_image 
	