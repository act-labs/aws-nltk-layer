import json
import nltk
from nltk.corpus import wordnet as wn


def synonyms(event, context): 
    word = event["pathParameters"]["word"]
    synsets = wn.synsets(word)

    synonyms = []

    for syn in synsets:
        for l in syn.lemmas():
            synonyms.append(l.name())    


    response = {
        "statusCode": 200,
        "body": json.dumps(list(set(synonyms)))
    }

    return response


