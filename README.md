docker build -t euechi/orbis-training-docker:0.1.0 .
docker push euechi/orbis-training-docker
docker tag 7db9c916bc4e euechi/orbis-training-docker:0.2.0
docker run -d -p "1080:80" euechi/orbis-training-docker:1.0.0
docker run -w /app -v  "D:\Eduardo\Capacitaciones\2.Docker\Ejercicios\orbis-training-project\resources":/app  euechi/orbis-training-docker:4.0.0 npm install