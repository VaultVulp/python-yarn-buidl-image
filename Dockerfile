FROM python:3.6.2

MAINTAINER vaultvulp

# Installing packages
RUN pip install -U tox && \
    curl -sL https://deb.nodesource.com/setup_8.x | bash - && apt-get install -y nodejs && \
    npm install -g yarn && \
    yarn global add --dev react react-dom enzyme react-test-renderer enzyme-to-json jest jest-fetch-mock jest-localstorage-mock
