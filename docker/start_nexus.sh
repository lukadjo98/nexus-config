sudo docker volume create nexus-data --label "group=nexus"

sudo docker build -t nexus .

sudo docker run -d -p 8444:8081 --name nexus \
	-v nexus-data:/nexus-data \
	nexus

echo nexus is available on http://localhost:8444