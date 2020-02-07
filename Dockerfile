FROM node:13.7.0-alpine
LABEL maintainer="devops@rpsgroup.com"

COPY bin /opt/osmc/bin
COPY public /opt/osmc/public
COPY routes /opt/osmc/routes
COPY views /opt/osmc/views
COPY app.js package.json /opt/osmc/

RUN apk update && \
    apk add yarn && \
    rm -rf /var/cache/apk/*

WORKDIR /opt/osmc
RUN yarn

ENV NODE_ENV production

# don't run as root
USER node

CMD ["bin/www"]
