docker build -t nltk-lambda-layer -f Dockerfile .
docker run -d --name nltk-layer nltk-lambda-layer false
docker cp nltk-layer:/opt ./layer
docker cp nltk-layer:/var/task/requirements.txt .
docker rm nltk-layer
