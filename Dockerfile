FROM continuumio/miniconda:4.5.4

RUN apt-get update && apt-get install -y default-libmysqlclient-dev \
        build-essential
RUN pip install --no-cache-dir boto3 \
        mlflow \
        mysqlclient

ENTRYPOINT mlflow server