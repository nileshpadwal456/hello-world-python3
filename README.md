# Hello, World! from Python3

This project is a simple API that returns `Hello, World!` when you hit the root endpoint.

It was inspired by work done by [Shekhar Gulati](https://github.com/shekhargulati) and forked from their original repo at <https://github.com/shekhargulati/python-flask-docker-hello-world>

This is built using [Python3](https://docs.python.org/3), [the Flask microframework](http://flask.pocoo.org) and encapsulated within a [Docker](https://www.docker.com) container

Build the image using the following command

```bash
$ docker build -t simple-flask-app:latest .
```

Run the Docker container using the command shown below.

```bash
$ docker run -d -p 5000:5000 simple-flask-app
```

The application will be accessible at http:127.0.0.1:5000 or if you are using boot2docker then first find ip address using `$ boot2docker ip` and the use the ip `http://<host_ip>:5000`
