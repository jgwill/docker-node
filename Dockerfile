FROM jgwill/ubuntu

RUN apt update && \
	apt upgrade -y && \
	curl -sL https://deb.nodesource.com/setup_17.x | sudo -E bash - && \
	apt install -y nodejs && \
	apt install build-essential -y && \
	apt clean  && rm -rf /var/lib/apt/lists/*


# Install NodeJS
#RUN curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -

#RUN curl -sL https://deb.nodesource.com/setup_17.x | sudo -E bash -

#RUN apt install -y nodejs 

# Node Installed

## Installing might be useful for package (make the container ready for working with many package)

#RUN apt install build-essential -y
#ENV JGWILLNODEGLOBALINSTALLSCRIPT=https://gist.githubusercontent.com/jgwill/7e68015d9c2e85d97ca6e6e13e7d1591/raw/2cc4013b34f47154389d899c1d3a9fc7e0feb8d9/jgwill-docker-node-210131-install.sh

#RUN curl -sL $JGWILLNODEGLOBALINSTALLSCRIPT | bash -
#RUN apt update && apt upgrade -y
RUN npm i npm --g
RUN npm i node-gyp --g
RUN npm i yarn --g
RUN npm i http-server --g
RUN npm i tlid --g

RUN apt clean
