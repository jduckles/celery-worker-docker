FROM ubuntu
MAINTAINER Jonah Duckles <jonah@duckles.org>

RUN apt-get update && apt-get install -y python python-dev python-setuptools
RUN easy_install pip
RUN pip install virtualenv
RUN mkdir /opt/celeryd
RUN virtualenv /opt/celeryd
RUN /opt/celeryd/bin/pip install celery pymongo

ADD celeryconfig.py /opt/celeryd/celeryconfig.py

VOLUME ["/opt/celeryd/tasks"]

WORKDIR /opt/celeryd
ENV C_FORCE_ROOT=TRUE;
ENTRYPOINT /opt/celeryd/bin/celery worker -Q `hostname`
