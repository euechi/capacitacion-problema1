docker build -t euechi/orbis-training-docker:0.1.0 .
docker push euechi/orbis-training-docker
docker tag 7db9c916bc4e euechi/orbis-training-docker:0.2.0
docker run -d -p "1080:80" euechi/orbis-training-docker:1.0.0
docker run -w /app -v  "D:\Eduardo\Capacitaciones\2.Docker\Ejercicios\orbis-training-project":/app  euechi/orbis-training-docker:4.0.0 npm install
docker run -p "3030:3030" -p "35729:3030" -w /app -v "D:\Eduardo\Capacitaciones\2.Docker\Ejercicios\orbis-training-project":/app  euechi/orbis-training-docker:4.0.0 npm start
docker run -p "1024:3030" -p "35729:3030" -w /app -v "D:\Eduardo\Capacitaciones\2.Docker\Ejercicios\orbis-training-project":/app  euechi/orbis-training-docker:4.0.0 npm start
docker-compose -f ./docker-compose.yml up
docker run --net=host node:10.10.0-slim curl http://localhost:1024
docker run -w /app -v  "D:\Eduardo\Capacitaciones\2.Docker\Ejercicios\orbis-training-project\resources":/app  euechi/orbis-training-docker:4.0.0 ./example.sh; saludo
docker run -w /app -v  "D:\Eduardo\Capacitaciones\2.Docker\Ejercicios\orbis-training-project\resources":/app --entrypoint ./ejecutando.sh euechi/orbis-training-docker:4.0.0