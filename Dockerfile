FROM ubuntu:24.04

RUN apt update && apt install -y software-properties-common \
    && add-apt-repository --yes --update ppa:ansible/ansible \
    && apt install -y ansible make jq unzip curl wget

CMD ["ansible", "--version"]