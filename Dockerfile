FROM perl:latest

MAINTAINER Ken Youens-Clark <kyclark@email.arizona.edu>

COPY local /usr/local/

RUN cpanm Statistics::Descriptive::Discrete

COPY scripts /usr/local/bin/

ENTRYPOINT ["run-screen-host.sh"]
