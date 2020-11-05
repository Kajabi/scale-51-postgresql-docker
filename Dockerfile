FROM ubuntu:20.04 AS pg-build

# prerequisites to get remaining packages
RUN apt-get update && DEBIAN_FRONTEND="noninteractive" TZ="UTC" apt-get install -y tzdata gnupg2 ca-certificates

# pg.list deb file is from postgresql package archive https://apt-archive.postgresql.org/
COPY ./pg.list /etc/apt/sources.list.d/pg.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7FCC7D46ACCC4CF8
# this installs postgresql-12.3 executeables in /usr/lib/postgresql/12/bin
RUN apt-get update && apt-get install -y postgresql-12=12.3-1.pgdg20.04+1
# this cleans up the packages used for the install
# is it necessary in multistaage build
RUN apt-get autoremove

COPY loop.sh /bin/

#CMD ["./bin/pg_ctlcluster","12","main","start"]
CMD ["/bin/sh",  "/bin/loop.sh"]




