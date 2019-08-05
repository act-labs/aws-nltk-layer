FROM lambci/lambda:build-python3.7

RUN rm -rf /opt/* && mkdir -p /opt/nltk_data
RUN python3 -m venv /opt/env

ENV PATH /opt/env/bin:/var/task/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

RUN python3 -m pip install --upgrade pip && python3 -m pip install nltk

RUN python3 -m nltk.downloader -d /opt/nltk_data wordnet

RUN pip freeze > requirements.txt

RUN pip install -r requirements.txt -t /opt/python

RUN rm -rf /opt/env



