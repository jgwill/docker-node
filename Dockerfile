#FROM jgwill/node:14.16.1
#v16.14.0
FROM jgwill/node:16.14.0

RUN apt update && apt upgrade -y && apt clean
RUN npm install -g yarn
RUN yarn global add @angular/cli
RUN yarn global add tlid json2bash

RUN ng config -g cli.packageManager yarn

WORKDIR /tmpinstall
RUN npm init --y && \
	yarn add @angular/material @angular/cdk  && \
	yarn add @angular/animations && \
	yarn add hammerjs && \
	ng new my-first-project \
		--routing=true \
		--verbose=true \
		--packageManager=yarn \
		--defaults=true \
		--commit=false \
		--style=scss && \
	rm -rf my-first-project && \
	rm -rf node_modules && ls
# That should have created our yarn local cache to speed up prototyping

WORKDIR /app

#RUN git config --global user.email "jgi@jgwill.com"
#RUN git config --global user.name "JGI"
#ENV TZ="America/New_York"
#RUN apt install tzdata -y
#RUN mkdir -p /config/etc && mv /etc/timezone /config/etc/ && ln -s /config/etc/timezone /etc/
#RUN echo "America/New_York"  > /etc/timezone
#RUN dpkg-reconfigure -f noninteractive tzdata
#CP /etc/timezone /etc/timezone

RUN apt clean
