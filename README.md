# Build a custom NLTK/WordNet AWS lambda function layer using docker and serverless framework

Build a Python AWS layer containing NLTK with WordNet dataset. To automate, docker and serverless framework are used. [See blog post](https://act-labs.github.io/posts/aws-nltk-docker/) for details .

## Usage

1. Run *build.sh* to build docker image with all packages and data required. Copy them to local "layer" directory
```sh
./build.sh

```

2. Deploy layer using serverless (will return layer ARN to use in lambda functions)

```sh
sls deploy

```

2. Change to "example" directory, copy layer ARN to serverless.yml, deploy example

```sh
cd example

sed -i 's/XXXXXXXX/your-layer-arn/g' serverless.yml

sls deploy
```

2. Test example HTTP endpoint (it should return word synonyms)

```sh
curl https://XXXXX.execute-api.us-east-1.amazonaws.com/dev/synonyms/active
["participating", "active_voice", "alive", "active_agent", "combat-ready", "fighting", "active", "dynamic"]
```