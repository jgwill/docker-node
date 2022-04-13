#FROM jgwill/node:14.16.1
#v16.14.0
FROM jgwill/node:16.14.0


RUN npm install -g @angular/cli

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

RUN git config --global user.email "jgi@jgwill.com"
RUN git config --global user.name "JGI"


RUN apt clean
