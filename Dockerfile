FROM python:3.7-slim

ADD . /app
WORKDIR /app

ENV FLIT_ROOT_INSTALL 1
RUN pip install flit && flit install

ENTRYPOINT [ "/usr/local/bin/ddi" ]