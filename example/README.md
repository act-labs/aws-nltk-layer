# AWS lambda function using spaCy AWS layer

A simple AWS lambda function, configured using serverless framework, which handles HTTP requests and extracts nouns from text using [spaCy](https://spacy.io/). [See blog post](https://act-labs.github.io/posts/aws-spacy-layer/) for details .

## Usage

1. Deploy using serverless

```sh
sls deploy
```
2. Send commands using HTTP endpoint

```sh
curl -XPOST https://XXXXX..execute-api.us-east-1.amazonaws.com/dev/nouns -d "black cat"
["cat"]
```