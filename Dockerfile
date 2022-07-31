# syntax=docker/dockerfile:1

FROM python:3.9-slim


COPY requirements.txt ./requirements.txt


RUN pip install -r requirements.txt


COPY . ./

EXPOSE 8052
RUN source myvenv/bin/activate


CMD CMD ["./startup.sh"]
