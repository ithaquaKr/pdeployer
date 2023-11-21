#!/bin/bash
mkdir -p $PG_UNIX_DIR
usermode -u 1001 postgres
groupmode -g 1001 postgres
chown -R postgres:postgres $PG_UNIX_DIR
su postgres -c "PATH=$PATH /usr/local/bin/patroni /var/lib/postgresql/patroni-config.yml"
