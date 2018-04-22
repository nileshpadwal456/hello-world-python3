# Hello, World! from Python3

This project is a simple API that returns `Hello, World!` when you hit the root endpoint.

You can see a live demo of it at <https://hello-world-python3.herokuapp.com>

> **NOTE**: This is using a free web dyno from Heroku, so it may take a moment to boot up

This project was inspired by work done by [Shekhar Gulati](https://github.com/shekhargulati) and forked from their original repo at <https://github.com/shekhargulati/python-flask-docker-hello-world>

The API is built using [Python3](https://docs.python.org/3) and [the Flask microframework](http://flask.pocoo.org).

It has been encapsulated within a [Docker](https://www.docker.com) container.

## Building

1. Since this is built on the `alpine-python3` base image, we need to pull that down:
   
   ``` 
   docker pull frolvlad/alpine-python3
   ```

2. Build our `"Hello, World!"` image using the following command

   ```
   docker build --tag hello-world-python3 .
   ```

## Running Locally

Run the container that was built using this command:

```
docker run --detach --publish 5000:5000 hello-world-python3
```

The application will be accessible at <http://localhost:5000>

## Deploying to Heroku

Thanks to the instructions on [this article](https://medium.com/travis-on-docker/how-to-run-dockerized-apps-on-heroku-and-its-pretty-great-76e07e610e22), deploying the `Hello, World!` docker container to Heroku is very easy!

Below are the abbreviated steps to take:

1. Install the Heroku container registry plugin for the Heroku CLI:

   ```
   heroku plugins:install heroku-container-registry
   ```

2. Login to the Heroku container registry:

   ```
   heroku container:login
   ```

3. Create an application:

   ```
   heroku create {APP_NAME}
   ```

4. Deploy your application:

   ```
   heroku container:push web --app {APP_NAME}
   ```


