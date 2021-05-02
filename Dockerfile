FROM jgwill/node:14.16.1


RUN npm install -g @angular/cli

RUN apt clean
