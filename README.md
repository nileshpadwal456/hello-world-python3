# Hello, World! from Python3

This project is a simple API that returns `Hello, World!` when you hit the root endpoint.

It was inspired by work done by [Shekhar Gulati](https://github.com/shekhargulati) and forked from their original repo at <https://github.com/shekhargulati/python-flask-docker-hello-world>

This is built using [Python3](https://docs.python.org/3), [the Flask microframework](http://flask.pocoo.org) and encapsulated within a [Docker](https://www.docker.com) container

## Building

1. Since this is built on the `alpine-python3` base image, we need to pull that down:
   
   ``` 
   docker pull frolvlad/alpine-python3
   ```

2. Build our `"Hello, World!"` image using the following command

   ```
   docker build --tag hello-world-python3 .
   ```

## Running

Run the container that was built using this command:

```
docker run --detach --publish 5000:5000 hello-world-python3
```

The application will be accessible at <http://localhost:5000>