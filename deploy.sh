sudo docker ps -a -q --filter "name=app" | grep -q . && docker stop app && docker rm app | true

sudo docker rmi forestgreening/jenkinstest:latest

sudo docker pull forestgreening/jenkinstest:latest

docker run -d -p 8080:8080 --env-file=env_list.txt --name app forestgreening/jenkinstest:latest

docker rmi -f $(docker images -f "dangling=true" -q) || true