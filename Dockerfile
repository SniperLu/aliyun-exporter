FROM python:3-slim

LABEL maintainer="mikeluwen@gmail.com"

WORKDIR /usr/src/app

COPY . /usr/src/app/
RUN pip install -e .

EXPOSE 9525

ENTRYPOINT ["python", "-u", "/usr/local/bin/aliyun-exporter", "-c", "/etc/aliyun-exporter.yml"]
