FROM jgwill/ubuntu

RUN apt update
RUN apt upgrade -y


# Install NodeJS
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

