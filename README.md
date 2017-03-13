[![CircleCI](https://circleci.com/gh/dcycle/docker-ava.svg?style=svg)](https://circleci.com/gh/dcycle/docker-ava)

Unit-test Javascript code with [ava](https://github.com/avajs/ava) and [sinon](http://sinonjs.org).

For example:

    docker run -v $(pwd)/example01/test:/app/code dcycle/ava
    docker run -v $(pwd)/example02/test:/app/code \
      -v $(pwd)/example02/code:/mycode dcycle/ava
