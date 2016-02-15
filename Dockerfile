FROM perl:latest

MAINTAINER Ken Youens-Clark <kyclark@email.arizona.edu>

COPY local /usr/local/

RUN apt-get update && apt-get install libdb-dev -y

RUN cpanm --force Capture::Tiny

RUN cpanm --force BioPerl

RUN cpanm Statistics::Descriptive::Discrete

RUN cpanm List::MoreUtils

RUN cpanm Readonly

COPY scripts /usr/local/bin/

ENTRYPOINT ["run-screen-host.sh"]
