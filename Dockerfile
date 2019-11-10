FROM node

RUN mkdir -p /app/code

WORKDIR /app

RUN npm install ava -g

RUN ava --init

RUN npm install sinon

ENTRYPOINT [ "ava", "code/**" ]
