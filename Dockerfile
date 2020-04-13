FROM node

RUN mkdir -p /app/code

WORKDIR /app

COPY docker-resources/package.json package.json

RUN npm install

ENTRYPOINT [ "npm", "test" ]
