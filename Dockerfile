FROM python:latest
MAINTAINER Jan Friedli

RUN pip3 install --upgrade pip
RUN pip3 install jupyter
RUN pip3 install ipython-sql
RUN apt-get update
RUN pip install psycopg2-binary
ENTRYPOINT jupyter notebook --ip 0.0.0.0 --no-browser --allow-root
