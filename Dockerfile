FROM node

RUN mkdir -p /app/code

RUN cd /app && npm install ava -g

RUN cd /app && ava --init

RUN cd /app && npm install sinon

# Useful for testing Vue.js, see https://vuejs.org/v2/guide/unit-testing.html
RUN cd /app && npm install vue

WORKDIR /app

ENTRYPOINT [ "ava", "code/**" ]
