FROM busybox
MAINTAINER Tru Huynh <tru@pasteur.fr>

RUN date +"%Y-%m-%d-%H%M" > /last_update
