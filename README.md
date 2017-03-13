[![CircleCI](https://circleci.com/gh/dcycle/docker-ava.svg?style=svg)](https://circleci.com/gh/dcycle/docker-ava)

Unit-test Javascript code with [ava](https://github.com/avajs/ava) and [sinon](http://sinonjs.org).

For example:

    docker run -v $(pwd)/example01/test:/app/code dcycle/ava
    docker run -v $(pwd)/example02/test:/app/code \
      -v $(pwd)/example02/code:/mycode dcycle/ava
    docker run -v $(pwd)/example03/test:/app/code \
      -v $(pwd)/example03/code:/mycode dcycle/ava

See [this project on the Docker Hub](https://hub.docker.com/r/dcycle/ava/).

More resources
-----

 * [
Effortless unit testing with AVA, Niels Gerritsen, April 19, 2016, wecodetheweb.com](https://wecodetheweb.com/2016/04/19/effortless-unit-testing-with-ava/).
