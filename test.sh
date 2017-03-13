set -e
docker pull node
docker pull dcycle/ava
docker build -t local-dcycle-ava-image .

docker run -v $(pwd)/example01/test:/app/code local-dcycle-ava-image
docker run -v $(pwd)/example02/test:/app/code -v $(pwd)/example02/code:/mycode local-dcycle-ava-image
docker run -v $(pwd)/example03/test:/app/code -v $(pwd)/example03/code:/mycode local-dcycle-ava-image

docker run -v $(pwd)/example01/test:/app/code dcycle/ava
docker run -v $(pwd)/example02/test:/app/code -v $(pwd)/example02/code:/mycode dcycle/ava
docker run -v $(pwd)/example03/test:/app/code -v $(pwd)/example03/code:/mycode dcycle/ava
