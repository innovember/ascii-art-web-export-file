docker image build -f Dockerfile -t "asciiweb" .

echo "----------------------------------------------------------------"

docker images

echo "----------------------------------------------------------------"

docker container run -p 9090:8181 --detach --name asciiservice asciiweb

echo "----------------------------------------------------------------"

docker ps -a

echo "----------------------------------------------------------------"

docker exec -it asciiservice /bin/bash
