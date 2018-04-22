FROM frolvlad/alpine-python3
MAINTAINER Rami Kiriako "rmkiriako@gmail.com"
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
