set -e
docker pull node
docker pull dcycle/ava:2
docker build -t local-dcycle-ava-image .

docker run --rm -v $(pwd)/example01/test:/app/code local-dcycle-ava-image
docker run --rm -v $(pwd)/example02/test:/app/code -v $(pwd)/example02/code:/mycode local-dcycle-ava-image
docker run --rm -v $(pwd)/example03/test:/app/code -v $(pwd)/example03/code:/mycode local-dcycle-ava-image
docker run --rm -v $(pwd)/example04/test:/app/code -v $(pwd)/example04/code:/mycode local-dcycle-ava-image

docker run --rm -v $(pwd)/example01/test:/app/code dcycle/ava:2
docker run --rm -v $(pwd)/example02/test:/app/code -v $(pwd)/example02/code:/mycode dcycle/ava:2
docker run --rm -v $(pwd)/example03/test:/app/code -v $(pwd)/example03/code:/mycode dcycle/ava:2
docker run --rm -v $(pwd)/example04/test:/app/code -v $(pwd)/example04/code:/mycode dcycle/ava:2
