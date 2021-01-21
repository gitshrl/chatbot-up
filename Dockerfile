FROM ubuntu:18.04

WORKDIR /opt/app

RUN apt-get update \
    && apt-get install -y python3.7 python3-pip \
    && python3 -m pip install --no-cache --upgrade pip

COPY requirements.txt /opt/app/requirements.txt

RUN pip3 install -r requirements.txt

COPY . /opt/app

RUN chmod +x /opt/app/main.sh

CMD /opt/app/main.sh
