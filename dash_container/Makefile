
dash_build:
	# Build the iamage.
	docker build --pull --rm -f "Dockerfile" -t dash_image "."

dash_run: dash_build
	# Run the container
	docker run --rm \
	-p 8050:8050 \
	--mount type=bind,source=$(shell pwd),target=/app \
	--name dash_container -it dash_image 

dash_bash: dash_build
	# Run the container
	docker run --rm \
	-p 8050:8050 \
	--entrypoint /bin/bash \
	--mount type=bind,source=$(shell pwd),target=/app \
	--name dash_container -it dash_image 


test_script:
	echo "23123"
	echo "23123"
	echo "23122"
