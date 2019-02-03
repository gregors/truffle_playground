FROM node:8.15.0-alpine

RUN mkdir -p /usr/src
WORKDIR /usr/src

RUN apk add -t .gyp --no-cache git python g++ make
RUN yarn global add truffle@5.0.3
RUN apk del .gyp

CMD ["/bin/sh"]
