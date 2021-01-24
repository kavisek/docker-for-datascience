
flask_build:
	# Build the iamage.
	docker build --pull --rm -f "Dockerfile" -t flask_image "."

flask_run: flask_build
	# Run the container
	docker run --rm \
	-p 5000:5000 \
	--mount type=bind,source=$(shell pwd),target=/app \
	--name flask_container -it flask_image 

flask_bash: flask_build
	# Run the container
	docker run --rm \
	-p 5000:5000 \
	--entrypoint /bin/bash \
	--mount type=bind,source=$(shell pwd),target=/app \
	--name flask_container -it flask_image 