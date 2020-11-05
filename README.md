
Found debian/ubuntu postgresql package archive

echo "deb https://apt-archive.postgresql.org/pub/repos/apt focal-pgdg-archive main" | sudo tee /etc/apt/sources.list.d/pg.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7FCC7D46ACCC4CF8
sudo apt-get update

apt-cache policy postgresql-12
postgresql-12:
  Installed: (none)
  Candidate: 12.4-1.pgdg20.04+1
  Version table:
     12.4-1.pgdg20.04+1 500
        500 https://apt-archive.postgresql.org/pub/repos/apt focal-pgdg-archive/main amd64 Packages
     12.4-0ubuntu0.20.04.1 500
        500 http://us-east-2.ec2.archive.ubuntu.com/ubuntu focal-updates/main amd64 Packages
        500 http://security.ubuntu.com/ubuntu focal-security/main amd64 Packages
     12.3-1.pgdg20.04+1 500
        500 https://apt-archive.postgresql.org/pub/repos/apt focal-pgdg-archive/main amd64 Packages
     12.2-4 500
        500 http://us-east-2.ec2.archive.ubuntu.com/ubuntu focal/main amd64 Packages
     12.2-3.pgdg20.04+1 500
        500 https://apt-archive.postgresql.org/pub/repos/apt focal-pgdg-archive/main amd64 Packages
     12.2-2.pgdg20.04+1+b1 500
        500 https://apt-archive.postgresql.org/pub/repos/apt focal-pgdg-archive/main amd64 Packages
     12.2-2.pgdg20.04+1 500
        500 https://apt-archive.postgresql.org/pub/repos/apt focal-pgdg-archive/main amd64 Packages
     12.2-1.pgdg20.04+1 500
        500 https://apt-archive.postgresql.org/pub/repos/apt focal-pgdg-archive/main amd64 Packages


# WTF, figured out the install command, 
sudo apt-get install postgresql-12=12.3-1.pgdg20.04+1

# remove crud used to install postgresql
sudo apt autoremove

# to start postgresql cluster
pg_ctlcluster 12 main start


All of the postgres client and server files are stored in /usr/lib/postgresql/12/bin

ls -al /usr/lib/postgresql/12/bin
total 11352
drwxr-xr-x 2 root root    4096 Nov  5 01:43 .
drwxr-xr-x 4 root root    4096 Oct  5 17:53 ..
-rwxr-xr-x 1 root root   68256 Aug 20 09:29 clusterdb
-rwxr-xr-x 1 root root   68320 Aug 20 09:29 createdb
-rwxr-xr-x 1 root root   76864 Aug 20 09:29 createuser
-rwxr-xr-x 1 root root   64064 Aug 20 09:29 dropdb
-rwxr-xr-x 1 root root   64032 Aug 20 09:29 dropuser
-rwxr-xr-x 1 root root  146776 May 13 07:49 initdb
-rwxr-xr-x 1 root root   43688 May 13 07:49 oid2name
-rwxr-xr-x 1 root root   47256 May 13 07:49 pg_archivecleanup
-rwxr-xr-x 1 root root  117976 Aug 20 09:29 pg_basebackup
-rwxr-xr-x 1 root root   68144 May 13 07:49 pg_checksums
-rwxr-xr-x 1 root root   47336 Aug 20 09:29 pg_config
-rwxr-xr-x 1 root root   63744 May 13 07:49 pg_controldata
-rwxr-xr-x 1 root root   72288 May 13 07:49 pg_ctl
-rwxr-xr-x 1 root root  413792 Aug 20 09:29 pg_dump
-rwxr-xr-x 1 root root  106152 Aug 20 09:29 pg_dumpall
-rwxr-xr-x 1 root root   68064 Aug 20 09:29 pg_isready
-rwxr-xr-x 1 root root   84824 Aug 20 09:29 pg_receivewal
-rwxr-xr-x 1 root root   89024 Aug 20 09:29 pg_recvlogical
-rwxr-xr-x 1 root root   68160 May 13 07:49 pg_resetwal
-rwxr-xr-x 1 root root  179808 Aug 20 09:29 pg_restore
-rwxr-xr-x 1 root root  105056 May 13 07:49 pg_rewind
-rwxr-xr-x 1 root root   43176 May 13 07:49 pg_standby
-rwxr-xr-x 1 root root   47376 May 13 07:49 pg_test_fsync
-rwxr-xr-x 1 root root   39144 May 13 07:49 pg_test_timing
-rwxr-xr-x 1 root root  146248 May 13 07:49 pg_upgrade
-rwxr-xr-x 1 root root  101024 May 13 07:49 pg_waldump
-rwxr-xr-x 1 root root  163280 May 13 07:49 pgbench
-rwxr-xr-x 1 root root 8076608 May 13 07:49 postgres
lrwxrwxrwx 1 root root       8 May 13 07:49 postmaster -> postgres
-rwxr-xr-x 1 root root  695744 Aug 20 09:29 psql
-rwxr-xr-x 1 root root   72480 Aug 20 09:29 reindexdb
-rwxr-xr-x 1 root root   80864 Aug 20 09:29 vacuumdb
-rwxr-xr-x 1 root root   43528 May 13 07:49 vacuumlo

/usr/lib/postgresql/12/bin/postgres  --version
postgres (PostgreSQL) 12.3 (Ubuntu 12.3-1.pgdg20.04+1)

/usr/lib/postgresql/12/bin/pg_dump --version
pg_dump (PostgreSQL) 12.4 (Ubuntu 12.4-0ubuntu0.20.04.1)

