
FROM python:3.9-slim

WORKDIR /app
# please review all the latest versions here:
# https://googlechromelabs.github.io/chrome-for-testing/
ENV CHROMEDRIVER_VERSION=131.0.6778.85

COPY requirements.txt ./
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

### install chrome
RUN apt-get update && apt-get install -y wget && apt-get install -y zip
RUN wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt-get install -y ./google-chrome-stable_current_amd64.deb

### install chromedriver
RUN wget http://chromedriver.storage.googleapis.com/2.10/chromedriver_linux64.zip \
  && unzip chromedriver_linux64.zip && rm -dfr chromedriver_linux64.zip \
  && mv chromedriver /usr/bin/chromedriver \
  && chmod +x /usr/bin/chromedriver

COPY . /app/

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    wget \
    curl \
    gnupg \
    unzip 

RUN pip install undetected-chromedriver selenium seleniumbase requests

ENV PYTHONUNBUFFERED=1

CMD ["python", "nog.py"]
