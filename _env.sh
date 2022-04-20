export containertag=jgwill/node:angular

dockertag=$containertag
containername=nodeangular

#dkecho=true

dkbuildmorerun="RUN ng config --global cli.packageManager yarn"
