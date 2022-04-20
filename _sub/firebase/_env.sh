. ../../_env.sh
export dockertagroot=$dockertag
export cname=$(basename $(pwd))
export dockertag=$dockertagroot"--"$cname
export containername=$containername"--"$cname

xmount=/home/jgi:/home/jgi
