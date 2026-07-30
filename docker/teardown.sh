sudo docker container stop $(sudo docker ps -a -q --filter "label=group=nexus")
sudo docker container rm $(sudo docker ps -a -q --filter "label=group=nexus")
sudo docker volume rm $(sudo docker volume ls -q --filter "label=group=nexus")
sudo docker volume prune
sudo docker image rm $(sudo docker images --filter "label=group=nexus")