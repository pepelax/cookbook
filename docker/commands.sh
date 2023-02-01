sudo docker run -it --entrypoint sh <container>
sudo docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' <container>