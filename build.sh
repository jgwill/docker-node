source _env.sh

unset DOCKER_BUILDKIT

docker build -t $containertag .
#sleep 44
docker push $containertag 
