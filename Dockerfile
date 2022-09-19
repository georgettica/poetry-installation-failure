FROM ubuntu

# used for the apt install to not open prompts and assume defaults (tzdata provoked this envvar addition)
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update \
    && apt install -y software-properties-common \
    && add-apt-repository ppa:deadsnakes/ppa \
    && apt update \
    && apt install -y \
         python3.8 \
         curl \
         python3.8-distutils \
         git \
    && apt clean
