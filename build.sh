source _env.sh
docker build -t $containertag .
sleep 44
docker push $containertag 