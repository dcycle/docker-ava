FROM node

RUN mkdir -p /app/code

WORKDIR /app

# See https://github.com/angular/angular/issues/13935#issuecomment-272761000
RUN npm i -g npm@3.10.10

RUN npm install ava -g

RUN ava --init

RUN npm install sinon

ENTRYPOINT [ "ava", "code/**" ]
