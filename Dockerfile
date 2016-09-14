FROM alpine:latest

MAINTAINER Christian Nuss christian@collectivehealth.com

EXPOSE 8888

# Install packages
RUN apk add --no-cache \
    python \
    py-pip \
    py-psycopg2

RUN pip install tornado \
                sqlalchemy

RUN mkdir /powa-web

ADD . /powa-web

ENTRYPOINT /powa-web/powa-web