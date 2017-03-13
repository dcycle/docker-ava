set -e
docker pull node
docker build -t local-dcycle-ava-image .
docker run -v $(pwd)/example01/test:/app/code local-dcycle-ava-image
docker run -v $(pwd)/example02/test:/app/code -v $(pwd)/example02/code:/mycode local-dcycle-ava-image
