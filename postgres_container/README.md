### Writing Data to a Postgres Database using Docker

This example goes over how to create a docker container on your local computer using docker. The notebook within this directory goes over how to connect the docker container on your machine and how to read and write data to the database using pandas and sql alchemy.

### Starting a local docker container

After you install docker on your local laptop. Run the following command to install a postgres docker container on you local computer:.

You can use the makefile in this repo start the postgres container.

```Makefile
# Build the postgres image.
docker_build

# Run the postgres images.
docker_run

```

### Connecting to Database via Postico

Now that the database is running within a docker container. We can now connect to this database using a third-party software if needed. The password will be `docker`.

![Images](Images/postico_image.png)

## Creating Conda Enviroment

If you need to create a conda enviroment your can use the following commands

```bash
# Create a conda virtual environment using Python 3.6 and install SQL Alchemy
conda create -n postgres python=3.6 \
&& source activate postgresql \
&& pip install psycopg2-binary \
&& conda install -c anaconda sqlalchemy \
```

You might need to install extra package to get the notebooks within this repo to work. This should be pretty easy if you have experience with conda.

# Loading Sample Data

You can dowloda a postgres compatible version of the postgres database at the following [Adventure Works Database Link](https://github.com/lorint/AdventureWorks-for-Postgres).

### References

cl

- https://www.saltycrane.com/blog/2019/01/how-run-postgresql-docker-mac-local-development/
- https://hub.docker.com/_/postgres?tab=description
- https://github.com/docker-library/postgres/blob/38841304ddd06dd3b39cc080b2c8fce5a5be8e52/11/Dockerfile
