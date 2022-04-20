FROM jgwill/ubuntu:latest

RUN apt update && \
 	apt upgrade -y && \
	curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash - && \
	apt install -y nodejs && \
	apt install build-essential -y && \
	apt clean && \
	rm -rf /var/lib/apt/lists/*





RUN npm install -g npm
RUN npm i node-gyp --g
RUN npm i yarn --g
RUN npm i http-server --g
RUN npm i tlid --g
RUN npm i json2bash --g
RUN npm install typescript --g
RUN npm i create-pattern-lab --g

#RUN npm install npm --g


RUN apt clean
