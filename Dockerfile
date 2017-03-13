FROM node

RUN mkdir -p /app/code

RUN cd /app && npm install ava -g

RUN cd /app && ava --init

RUN cd /app && npm install sinon

WORKDIR /app

ENTRYPOINT [ "ava", "code/**" ]
