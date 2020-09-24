FROM ubuntu:14.04
COPY webserver.sh /usr/bin/webserver.sh
COPY index.html /usr/bin/index.html
CMD /usr/bin/webserver.sh
