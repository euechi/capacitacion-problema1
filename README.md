docker build -t euechi/orbis-training-docker:0.1.0 .
docker push euechi/orbis-training-docker
docker tag 7db9c916bc4e euechi/orbis-training-docker:0.2.0
