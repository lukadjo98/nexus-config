sudo docker container stop $(sudo docker ps -a -q --filter "label=group=nexus")
sudo docker container rm $(sudo docker ps -a -q --filter "label=group=nexus")