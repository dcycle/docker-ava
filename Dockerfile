FROM node

RUN mkdir -p /app/code

WORKDIR /app

RUN npm install ava sinon

ENTRYPOINT [ "/app/node_modules/.bin/ava" ]
