sudo docker run -it --entrypoint sh <container>
sudo docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' <container>
sudo docker inspect -f '{{index .Options "com.docker.network.bridge.enable_icc"}}' <network>