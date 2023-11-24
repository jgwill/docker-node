export containertag="jgwill/node:16.20.2"
export dockertag="$containertag"
export containername="tstjgwillnode1615x"

#export containertag=jgwill/node:latest
#dkecho=true
dkhostname="$containername"

dkcommand=bash #command to execute

unset DOCKER_BUILDKIT
