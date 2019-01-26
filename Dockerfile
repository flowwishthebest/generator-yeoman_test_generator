FROM node:8

WORKDIR /usr/src/generator-yeoman_test_generator

ADD package.json .
COPY app/ app/

RUN npm i -g yo
RUN npm i -q

RUN npm link

RUN useradd -ms /bin/bash docker
USER docker

CMD ["yo", "yeoman_test_generator"]
