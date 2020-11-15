docker_build:
	docker build --rm -t conda_image .

docker_attach:
	docker run --entrypoint /bin/bash --name conda_container -it conda_image

test_system_python:
	python3 main.py

test_conda_python:
	conda run -n app python3 main.py

test_docker_python:
	docker run --name conda_container -it conda_image